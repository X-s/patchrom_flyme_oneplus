.class Lcom/oneplus/gallery2/media/GalleryDatabase$1$1;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase$1;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/GalleryDatabase$1;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/GalleryDatabase$1;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$1$1;->this$1:Lcom/oneplus/gallery2/media/GalleryDatabase$1;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$1$1;->val$uri:Landroid/net/Uri;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$1$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$0(Landroid/net/Uri;)V

    .line 549
    return-void
.end method
