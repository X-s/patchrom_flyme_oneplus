.class Lcom/oneplus/gallery/BurstViewer$16;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Lcom/oneplus/camera/UIComponent$ViewRotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$16;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$16;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0, p2}, Lcom/oneplus/gallery/BurstViewer;->-wrap25(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/base/Rotation;)V

    .line 1195
    return-void
.end method
