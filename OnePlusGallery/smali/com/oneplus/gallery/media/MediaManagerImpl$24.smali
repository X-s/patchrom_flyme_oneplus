.class Lcom/oneplus/gallery/media/MediaManagerImpl$24;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 3746
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$24;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 3748
    return-void
.end method
