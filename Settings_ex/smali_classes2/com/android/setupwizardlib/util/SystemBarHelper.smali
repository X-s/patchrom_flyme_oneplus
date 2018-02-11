.class public Lcom/android/setupwizardlib/util/SystemBarHelper;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;,
        Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;,
        Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMMERSIVE_FLAGS:I = 0x1602
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final DIALOG_IMMERSIVE_FLAGS:I = 0x1002
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final PEEK_DECOR_VIEW_RETRIES:I = 0x3

.field private static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "SystemBarHelper"


# direct methods
.method static synthetic -wrap0(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->getBottomDistance(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "vis"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/util/SystemBarHelper$1;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    .line 223
    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flag"    # I

    .prologue
    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 150
    .local v0, "vis":I
    or-int v1, v0, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 147
    .end local v0    # "vis":I
    :cond_0
    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/Window;I)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flag"    # I

    .prologue
    .line 158
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 160
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 157
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private static getBottomDistance(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 344
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 345
    .local v0, "coords":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "callback"    # Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;

    .prologue
    .line 243
    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;-><init>(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)V

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;I)V

    .line 242
    return-void
.end method

.method public static hideSystemBars(Landroid/app/Dialog;)V
    .locals 5
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/16 v4, 0x1002

    const/4 v3, 0x0

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 80
    .local v0, "window":Landroid/view/Window;
    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->temporarilyDisableDialogFocus(Landroid/view/Window;)V

    .line 81
    invoke-static {v0, v4}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 82
    invoke-static {v0, v4}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 86
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 77
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public static hideSystemBars(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const/16 v3, 0x1602

    const/4 v2, 0x0

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 102
    invoke-static {p0, v3}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 103
    invoke-static {p0, v3}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 107
    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 108
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 100
    :cond_0
    return-void
.end method

.method private static removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "vis"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$2;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/util/SystemBarHelper$2;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    .line 233
    return-void
.end method

.method public static removeVisibilityFlag(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flag"    # I

    .prologue
    .line 170
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 172
    .local v0, "vis":I
    not-int v1, p1

    and-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 169
    .end local v0    # "vis":I
    :cond_0
    return-void
.end method

.method public static removeVisibilityFlag(Landroid/view/Window;I)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flag"    # I

    .prologue
    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 183
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static setBackButtonVisible(Landroid/view/Window;Z)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x400000

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 190
    if-eqz p1, :cond_1

    .line 191
    invoke-static {p0, v2}, Lcom/android/setupwizardlib/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/Window;I)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {p0, v2}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    goto :goto_0
.end method

.method public static setImeInsetView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 213
    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;-><init>(Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 211
    :cond_0
    return-void
.end method

.method public static showSystemBars(Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->showSystemBars(Landroid/view/Window;Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public static showSystemBars(Landroid/view/Window;Landroid/content/Context;)V
    .locals 7
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x1602

    const/4 v5, 0x0

    .line 127
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 128
    invoke-static {p0, v6}, Lcom/android/setupwizardlib/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/Window;I)V

    .line 129
    invoke-static {p0, v6}, Lcom/android/setupwizardlib/util/SystemBarHelper;->removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V

    .line 131
    if-eqz p1, :cond_0

    .line 134
    const v3, 0x1010451

    const v4, 0x1010452

    .line 133
    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 135
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 136
    .local v1, "statusBarColor":I
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 137
    .local v0, "navigationBarColor":I
    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 139
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    .end local v0    # "navigationBarColor":I
    .end local v1    # "statusBarColor":I
    .end local v2    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private static temporarilyDisableDialogFocus(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const/16 v0, 0x8

    .line 292
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 297
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 298
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/setupwizardlib/util/SystemBarHelper$3;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/util/SystemBarHelper$3;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method
