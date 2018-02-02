.class Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;
.super Ljava/lang/Object;
.source "PhotoMediaStoreMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->access$4(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;)V

    .line 215
    return-void
.end method
