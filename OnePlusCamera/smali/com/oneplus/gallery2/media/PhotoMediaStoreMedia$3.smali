.class Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;
.super Lcom/oneplus/base/CallbackHandle;
.source "PhotoMediaStoreMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/Media$SizeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    .line 131
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->verifyAccess()V

    .line 137
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->access$2(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method
