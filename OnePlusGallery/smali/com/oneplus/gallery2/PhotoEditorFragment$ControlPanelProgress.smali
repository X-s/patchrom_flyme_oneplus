.class public Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlPanelProgress"
.end annotation


# instance fields
.field public progress:I

.field public value:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "value"    # F

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->progress:I

    .line 319
    iput p2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    .line 320
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;
    .locals 3

    .prologue
    .line 325
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->progress:I

    iget v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;-><init>(IF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->clone()Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    move-result-object v0

    return-object v0
.end method
