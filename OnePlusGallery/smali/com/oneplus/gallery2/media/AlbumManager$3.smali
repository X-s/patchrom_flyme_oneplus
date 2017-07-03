.class Lcom/oneplus/gallery2/media/AlbumManager$3;
.super Lcom/oneplus/base/CallbackHandle;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/AlbumManager;->createAlbum(Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;
    .param p4, "x2"    # Landroid/os/Handler;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$3;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 214
    return-void
.end method
