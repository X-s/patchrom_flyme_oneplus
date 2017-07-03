.class final Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitmapDecodeInfo"
.end annotation


# instance fields
.field public contentUri:Landroid/net/Uri;

.field public decodeHandle:Lcom/oneplus/base/Handle;

.field public filePath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery/FilmstripFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery/FilmstripFragment$1;

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;-><init>()V

    return-void
.end method
