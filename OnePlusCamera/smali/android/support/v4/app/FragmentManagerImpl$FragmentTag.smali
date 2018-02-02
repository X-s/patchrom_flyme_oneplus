.class Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentTag"
.end annotation


# static fields
.field public static final Fragment:[I

.field public static final Fragment_id:I = 0x1

.field public static final Fragment_name:I = 0x0

.field public static final Fragment_tag:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 2216
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010003

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x10100d0

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x10100d1

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
