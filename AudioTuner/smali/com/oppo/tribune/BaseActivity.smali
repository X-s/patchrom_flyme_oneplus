.class public Lcom/oppo/tribune/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    invoke-static {p0}, Lcom/oppo/statistics/NearMeStatistics;->onPause(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 25
    invoke-static {p0}, Lcom/oppo/tribune/util/NetCheckService;->doRomReSignInTask(Landroid/content/Context;)V

    .line 26
    invoke-static {p0}, Lcom/oppo/statistics/NearMeStatistics;->onResume(Landroid/content/Context;)V

    .line 27
    return-void
.end method
