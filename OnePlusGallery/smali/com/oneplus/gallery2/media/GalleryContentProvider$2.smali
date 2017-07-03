.class Lcom/oneplus/gallery2/media/GalleryContentProvider$2;
.super Ljava/lang/Object;
.source "GalleryContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/GalleryContentProvider;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$2;->this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$2;->this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

    # getter for: Lcom/oneplus/gallery2/media/GalleryContentProvider;->m_ExtraMediaInfoChangeCallback:Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->access$000(Lcom/oneplus/gallery2/media/GalleryContentProvider;)Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->addExtraMediaInfoChangeCallback(Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;)Lcom/oneplus/base/Handle;

    .line 191
    return-void
.end method
