.class public Lcom/oppo/tribune/protobuf/info/ReasonEntity;
.super Ljava/lang/Object;
.source "ReasonEntity.java"


# instance fields
.field private id:I

.field private isSelected:Z

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->id:I

    return v0
.end method

.method public getIsSelected()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->isSelected:Z

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->id:I

    .line 30
    return-void
.end method

.method public setIsselected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->isSelected:Z

    .line 46
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->reason:Ljava/lang/String;

    .line 38
    return-void
.end method
