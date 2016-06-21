.class public Lcom/android/systemui_ex/qs/QSTile$State;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public autoMirrorDrawable:Z

.field public contentDescription:Ljava/lang/String;

.field public dualLabelContentDescription:Ljava/lang/String;

.field public icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

.field public label:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/qs/QSTile$State;->autoMirrorDrawable:Z

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui_ex/qs/QSTile$State;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/systemui_ex/qs/QSTile$State;

    .prologue
    .line 418
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 419
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 420
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->visible:Z

    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->visible:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 427
    .local v0, "changed":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/qs/QSTile$State;->visible:Z

    iput-boolean v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->visible:Z

    .line 428
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    .line 429
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->label:Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    .line 432
    iget-boolean v1, p0, Lcom/android/systemui_ex/qs/QSTile$State;->autoMirrorDrawable:Z

    iput-boolean v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 433
    return v0

    .line 420
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 443
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, ",icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, ",contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v1, ",dualLabelContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v1, ",autoMirrorDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method
