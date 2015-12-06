require 'spec_helper'

feature 'User visits reports subjects page' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak', birthdate: '1999-12-04' }
  let!(:teacher) { create :teacher, first_name: 'Pies', last_name: 'Pluto', academic_title: 'Dr.' }
  let!(:subject_item) { create :subject_item, title: 'Math' }
  let!(:participant) { create :participation, student: student, subject_item: subject_item }
  let!(:subject_item_note) { create :subject_item_note, subject_item: subject_item, student: student }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit report_subjects_path
  end
  
  context "checks the table" do
      it "expects the table to have column birthdate" do
        within(".birthdate") do
          expect(page).to have_content 'Birthdate'
        end
      end
      
        it "expects the table to display student's birthdate" do
            expect(page).to have_content '1999-12-04'
          end
        end
    end
