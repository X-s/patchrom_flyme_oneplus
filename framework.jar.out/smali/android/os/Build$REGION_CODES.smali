.class public Landroid/os/Build$REGION_CODES;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REGION_CODES"
.end annotation


# static fields
.field public static final CHINA:Ljava/lang/String; = "CN"

.field public static final GLOBAL:Ljava/lang/String; = "OverSeas"

.field public static final IS_CHINA:Z

.field public static final IS_GLOBAL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 698
    const-string v0, "CN"

    sget-object v1, Landroid/os/Build;->REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build$REGION_CODES;->IS_CHINA:Z

    .line 704
    const-string v0, "OverSeas"

    sget-object v1, Landroid/os/Build;->REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build$REGION_CODES;->IS_GLOBAL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
