.class Lcom/oneplus/gallery2/media/TempPhotoMedia$1;
.super Lcom/oneplus/base/CallbackHandle;
.source "TempPhotoMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempPhotoMedia;->getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/Media$DetailsCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$DetailsCallback;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/oneplus/gallery2/media/Media$DetailsCallback;
    .param p4, "x2"    # Landroid/os/Handler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$1;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 56
    return-void
.end method
