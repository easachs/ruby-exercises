require "./lib/simple_math"

RSpec.describe SimpleMath do

  it 'can add two numbers' do
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    expect(result).to eq(expected)
  end

  it 'can add two different numbers' do
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two numbers' do
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two other numbers' do
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    expect(result).to eq(expected)
  end

  it 'can multiply two numbers' do

    # instantiate the class
    sm = SimpleMath.new
    #
    # call the method being tested
    result = sm.multiply(5, 6)
    # determine your expected result
    expected = 30
    #
    # check results
    expect(result).to eq(expected)
  end


  it 'can multiply two other numbers' do

    # instantiate the class
    sm = SimpleMath.new
    #
    # call the method being tested
    result = sm.multiply(10, 15)
    # determine your expected result
    expected = 150
    #
    # check results
    expect(result).to eq(expected)
  end

  it 'can divide two numbers' do
    sm = SimpleMath.new
    result = sm.divide(9, 3)
    expect(result).to eq(3)
  end

  it 'can divide two other numbers' do
    sm = SimpleMath.new
    result = sm.divide(81, 9)
    expect(result).to eq(9)
  end
end
