public class Hello {
	static {
		System.loadLibrary("hello");
	}
	private String[] _args;
	public Hello(String[] args) {
		_args = args;
	}
	private native int print();
	public int run() {
		return print();
	}
	public static void main(String[] args) {
		new Hello(args).run();
	}
}
