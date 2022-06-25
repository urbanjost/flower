module flower
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, flower!"
  end subroutine say_hello
end module flower
