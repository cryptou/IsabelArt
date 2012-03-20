require 'spec_helper'

describe CategoryController do
  render_views
  subject { page }

  shared_examples_for "all category pages" do
    it { should have_selector('title', text: full_title(title)) }
  end

  describe "China page" do
    before { visit china_path }

    let(:title) { 'Chinese Terracotta' }
    it_should_behave_like "all category pages"
  end

  describe "Burma page" do
    before { visit burma_path }

    let(:title) { 'Burma' }
    it_should_behave_like "all category pages"
  end

  describe "Asia page" do
    before { visit asia_path }

    let(:title) { 'Asia' }
    it_should_behave_like "all category pages"
  end

  describe "Gandhara page" do
    before { visit gandhara_path }

    let(:title) { 'Gandhara' }
    it_should_behave_like "all category pages"
  end

  describe "Porcelain page" do
    before { visit porcelain_path }

    let(:title) { 'Porcelain' }
    it_should_behave_like "all category pages"
  end
end
