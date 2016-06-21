.class public Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;
.super Ljava/lang/Object;
.source "LauncherColorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;,
        Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;
    }
.end annotation


# static fields
.field private static mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

.field private static mLauncherColorObserver:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;


# instance fields
.field private CONTENT_URI_CONTENT_COLOR:Landroid/net/Uri;

.field private CONTENT_URI_MAIN_COLOR:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mLauncherColorChangeCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "content://settings/system/oem_launcher_main_color_key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->CONTENT_URI_MAIN_COLOR:Landroid/net/Uri;

    .line 20
    const-string v0, "content://settings/system/oem_launcher_content_color_key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->CONTENT_URI_CONTENT_COLOR:Landroid/net/Uri;

    .line 28
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorChangeCallbackList:Ljava/util/ArrayList;

    .line 31
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorObserver:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;-><init>(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorObserver:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorChangeCallbackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->CONTENT_URI_CONTENT_COLOR:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->CONTENT_URI_MAIN_COLOR:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    return-object v0
.end method


# virtual methods
.method public getContentColor()I
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "oem_launcher_content_color_key"

    const/high16 v3, -0x1000000

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, "color":I
    :goto_0
    return v0

    .line 70
    .end local v0    # "color":I
    :cond_0
    const/high16 v0, -0x1000000

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public getMainColor()I
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "oem_launcher_main_color_key"

    const/high16 v3, -0x1000000

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "color":I
    :goto_0
    return v0

    .line 60
    .end local v0    # "color":I
    :cond_0
    const/high16 v0, -0x1000000

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public startObserving(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorChangeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorChangeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorObserver:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->startObserving()V

    .line 48
    return-void
.end method
