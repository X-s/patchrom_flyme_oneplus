.class Lcom/oneplus/gallery2/editor/CropEditorMode$1;
.super Ljava/lang/Object;
.source "CropEditorMode.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/CropEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/gallery/crop/CropModeType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/CropEditorMode;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/CropEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/crop/CropModeType;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/gallery/crop/CropModeType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/gallery/crop/CropModeType;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/gallery/crop/CropModeType;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/CropEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/crop/CropModeType;

    # invokes: Lcom/oneplus/gallery2/editor/CropEditorMode;->updateCropButtonDrawable(Lcom/oneplus/gallery/crop/CropModeType;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/editor/CropEditorMode;->access$000(Lcom/oneplus/gallery2/editor/CropEditorMode;Lcom/oneplus/gallery/crop/CropModeType;)V

    .line 53
    return-void
.end method
