.class final Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;
.super Ljava/lang/Object;
.source "PhotoMediaStoreMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SizeObtainingTask"
.end annotation


# instance fields
.field public volatile isCancelled:Z

.field public volatile size:Landroid/util/Size;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->access$0(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    .line 54
    return-void
.end method
