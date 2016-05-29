.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
.super Ljava/lang/Object;
.source "OPFingerPrintEntity.java"


# instance fields
.field private opfingerId:I

.field private opfingerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpfingerId()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->opfingerId:I

    return v0
.end method

.method public getOpfingerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->opfingerName:Ljava/lang/String;

    return-object v0
.end method

.method public setOpfingerId(I)V
    .locals 0
    .param p1, "opfingerId"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->opfingerId:I

    .line 11
    return-void
.end method

.method public setOpfingerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "opfingerName"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->opfingerName:Ljava/lang/String;

    .line 17
    return-void
.end method
