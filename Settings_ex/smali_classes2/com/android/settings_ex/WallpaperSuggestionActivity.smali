.class public Lcom/android/settings_ex/WallpaperSuggestionActivity;
.super Landroid/app/Activity;
.source "WallpaperSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 29
    const v2, 0x7f0e01a5

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WallpaperSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    const v3, 0x7f0e01a6

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/WallpaperSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 31
    const/high16 v2, 0x2000000

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WallpaperSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings_ex/WallpaperSuggestionActivity;->finish()V

    .line 26
    return-void
.end method
