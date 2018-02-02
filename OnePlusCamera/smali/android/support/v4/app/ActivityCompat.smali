.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/content/ContextCompat;-><init>()V

    .line 217
    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    if-nez p0, :cond_0

    .line 214
    :goto_0
    return-object v0

    .line 212
    :cond_0
    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    goto :goto_0
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatJB;->finishAffinity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->finishAfterTransition(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->postponeEnterTransition(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 2

    .prologue
    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    goto :goto_0
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompatJB;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatJB;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->startPostponedEnterTransition(Landroid/app/Activity;)V

    goto :goto_0
.end method
