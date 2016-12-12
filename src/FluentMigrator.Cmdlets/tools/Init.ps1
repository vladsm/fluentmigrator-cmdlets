param($installPath, $toolsPath, $package, $project)

if (Get-Module | ?{ $_.Name -eq 'FluentMigratorCmdlets' })
{
	Remove-Module FluentMigratorCmdlets
}

Import-Module (Join-Path $toolsPath FluentMigratorCmdlets.psd1)
