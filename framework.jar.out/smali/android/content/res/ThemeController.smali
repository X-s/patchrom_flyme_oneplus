.class public Landroid/content/res/ThemeController;
.super Ljava/lang/Object;
.source "ThemeController.java"


# static fields
.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I

.field private static mThemeController:Landroid/content/res/ThemeController;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/content/res/ThemeController;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    .line 27
    :cond_0
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-object v0
.end method


# virtual methods
.method public varargs getCorrectThemeResource([I)I
    .locals 2
    .param p1, "resIds"    # [I

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 44
    aget v0, p1, v1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    goto :goto_0
.end method

.method public getThemeState()I
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
