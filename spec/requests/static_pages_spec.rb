require 'spec_helper'

describe "StaticPages" do
  subject { page }

  shared_examples_for "all static pages" do
  	it { should have_selector('title', text: full_title(title)) }
  end

  describe "Home" do
  	before { visit root_path }

  	let(:title) 	{ 'Presentation' }
  	it_should_behave_like "all static pages"
  end

  describe "Contact" do
  	before { visit contact_path }

  	let(:title) 	{ 'Contact us' }
  	it_should_behave_like "all static pages"
  end

  describe "Internationalization" do
    describe "French Contact page" do

      before { visit contact_path(locale:'fr') }

      let(:title) { "Nous contacter" }
      it_should_behave_like "all static pages"
    end
  end
end
