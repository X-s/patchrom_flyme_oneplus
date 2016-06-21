.class public Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/String;

.field public crossStateReverse:Z

.field public dualLabelContentDescription:Ljava/lang/String;

.field public enabled:Z

.field public iconId:I

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->enabled:Z

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .prologue
    .line 353
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 354
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

    .line 355
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->enabled:Z

    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->enabled:Z

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->iconId:I

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->iconId:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 362
    .local v0, "changed":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->enabled:Z

    iput-boolean v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->enabled:Z

    .line 363
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->iconId:I

    iput v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->iconId:I

    .line 364
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    iput-boolean v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    .line 365
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->label:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    .line 368
    return v0

    .line 355
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ",iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->iconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, ",crossStateReverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v1, ",contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, ",dualLabelContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method
