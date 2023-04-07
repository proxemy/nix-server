{
	pkgs ? import <nixpkgs> {},
}:
pkgs.dockerTools.buildImage
{
	name = "docker-test";
	copyToRoot = [ pkgs.fakeNss pkgs.nginx ];

	#extraCommands = ''mkdir -p var/log/nginx var/cache/nginx'';

	config =
	{
		Cmd = [ "nginx" "-g" "error_log /dev/stdout;" ];
	};
}
