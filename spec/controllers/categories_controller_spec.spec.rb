require 'spec_helper'

describe CategoriesController do
  subject { page }

  describe "China page'" do

    before { visit china_path }
    it { should have_selector(title, text: "Chinese Terracotta") }
  end
end