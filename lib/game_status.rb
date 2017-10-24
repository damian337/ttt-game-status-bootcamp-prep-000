# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
]

# checks to see if there is a winner
def won?(board)

    if board.all? do |index|
        counter = 0
        position_taken?(board, counter)
        counter += 1
        end
        return false

    elsif board.none? do |index|
        counter = 0
        !position_taken?(board, counter)
        counter += 1
        end
        return false

    else
        true
    end
end

puts won?(["X", "X", "X", " "])
