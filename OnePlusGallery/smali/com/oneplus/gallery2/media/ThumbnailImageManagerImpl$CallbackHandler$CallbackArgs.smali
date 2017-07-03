.class final Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackArgs"
.end annotation


# instance fields
.field public callbackType:I

.field public completed:Z

.field public decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

.field final synthetic this$1:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

.field public thumb:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->this$1:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    .param p2, "x1"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;)V

    return-void
.end method
