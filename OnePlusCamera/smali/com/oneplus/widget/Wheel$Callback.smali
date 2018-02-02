.class public abstract Lcom/oneplus/widget/Wheel$Callback;
.super Ljava/lang/Object;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/Wheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTrackingTouch(Lcom/oneplus/widget/Wheel;)V
    .locals 0
    .param p1, "wheel"    # Lcom/oneplus/widget/Wheel;

    .prologue
    .line 53
    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/widget/Wheel;)V
    .locals 0
    .param p1, "wheel"    # Lcom/oneplus/widget/Wheel;

    .prologue
    .line 61
    return-void
.end method

.method public onValueChanged(Lcom/oneplus/widget/Wheel;IZ)V
    .locals 0
    .param p1, "wheel"    # Lcom/oneplus/widget/Wheel;
    .param p2, "value"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 71
    return-void
.end method
