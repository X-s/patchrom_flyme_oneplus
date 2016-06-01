.class public Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;
.super Ljava/lang/Exception;
.source "BitmapEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/cache/BitmapEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapEntityConstructException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 201
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/oppo/tribune/cache/BitmapEntity$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/oppo/tribune/cache/BitmapEntity$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/oppo/tribune/cache/BitmapEntity$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Throwable;
    .param p2, "x1"    # Lcom/oppo/tribune/cache/BitmapEntity$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
