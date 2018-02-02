.class Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;
.super Ljava/lang/Object;
.source "MediaStoreDirectoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

.field private final synthetic val$dirId:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    iput-wide p2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;->val$dirId:J

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;->val$dirId:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraDirectoryInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    const/16 v2, 0x2710

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;->val$dirId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 167
    return-void
.end method
