.class final Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;
.super Lcom/oneplus/gallery/media/BasicMediaList;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupMediaListImpl"
.end annotation


# instance fields
.field public final groupId:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaComparator;Ljava/lang/String;)V
    .locals 1
    .param p2, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p3, "groupId"    # Ljava/lang/String;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 1301
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lcom/oneplus/gallery/media/BasicMediaList;-><init>(Lcom/oneplus/gallery/media/MediaComparator;I)V

    .line 1302
    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->groupId:Ljava/lang/String;

    .line 1303
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 1308
    invoke-super {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->release()V

    .line 1309
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->clearMedia()V

    .line 1310
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->onGroupMediaListReleased(Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2500(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;)V

    .line 1311
    return-void
.end method
