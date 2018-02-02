.class Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;
.super Lcom/oneplus/base/Handle;
.source "PhotoMediaStoreMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAnimatableHandle"
.end annotation


# instance fields
.field public volatile callback:Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    const-string/jumbo v0, "CheckAnimatableHandle"

    .line 73
    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;->callback:Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;

    .line 75
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->access$1(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method
