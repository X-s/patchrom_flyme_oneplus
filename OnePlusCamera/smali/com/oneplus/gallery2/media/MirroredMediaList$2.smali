.class Lcom/oneplus/gallery2/media/MirroredMediaList$2;
.super Ljava/lang/Object;
.source "MirroredMediaList.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MirroredMediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MirroredMediaList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MirroredMediaList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MirroredMediaList$2;->this$0:Lcom/oneplus/gallery2/media/MirroredMediaList;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MirroredMediaList$2;->this$0:Lcom/oneplus/gallery2/media/MirroredMediaList;

    invoke-static {v0, p2, p3}, Lcom/oneplus/gallery2/media/MirroredMediaList;->access$1(Lcom/oneplus/gallery2/media/MirroredMediaList;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 43
    return-void
.end method
