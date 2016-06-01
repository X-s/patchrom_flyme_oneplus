.class public Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
.super Ljava/lang/Object;
.source "SoundEffectContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/listener/SoundEffectContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeCondition"
.end annotation


# instance fields
.field public id:J

.field public type:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

.field public where:Ljava/lang/String;

.field public whereArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->id:J

    .line 17
    sget-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->NONE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    iput-object v0, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->type:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    .line 22
    return-void
.end method
