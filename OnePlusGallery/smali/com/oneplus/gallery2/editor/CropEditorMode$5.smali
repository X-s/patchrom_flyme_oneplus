.class Lcom/oneplus/gallery2/editor/CropEditorMode$5;
.super Ljava/lang/Object;
.source "CropEditorMode.java"

# interfaces
.implements Lcom/oneplus/gallery2/widget/CropRegionSelector$OnCropRectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/CropEditorMode;->onCreateUI(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/CropEditorMode;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/CropEditorMode$5;->this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropRectChanged(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/CropEditorMode$5;->this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/CropEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 113
    return-void
.end method
