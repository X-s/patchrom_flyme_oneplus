.class final Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;
.super Lcom/oneplus/base/Handle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentProviderAccessHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;

.field public final contentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)V
    .locals 1
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 627
    const-string v0, "ContentProviderAccess"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 628
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->contentUri:Landroid/net/Uri;

    .line 629
    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;

    .line 630
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->closeDirectly()V

    .line 635
    return-void
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->cancelContentProviderAccess(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1600(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V

    .line 641
    return-void
.end method
