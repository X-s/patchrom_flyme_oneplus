.class public Landroid/content/pm/OpExtraActivityInfo;
.super Ljava/lang/Object;
.source "OpExtraActivityInfo.java"


# static fields
.field public static final CONFIG_NEW_SKIN_MASK:I = 0x9000000

.field public static final CONFIG_NEW_THEME_CHANGED:I = 0x9000000

.field public static final CONFIG_OLD_SKIN_MASK:I = 0x8000000

.field public static final CONFIG_OLD_THEME_CHANGED:I = 0x8000000

.field private static final TAG:Ljava/lang/String; = "OpExtraActivityInfo"


# instance fields
.field private final debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/OpExtraActivityInfo;->debug:Z

    .line 33
    return-void
.end method
