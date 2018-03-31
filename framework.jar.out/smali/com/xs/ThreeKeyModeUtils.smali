.class public Lcom/xs/ThreeKeyModeUtils;
.super Ljava/lang/Object;
.source "ThreeKeyModeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveOnePlusThreeKeyModeToAOSP(I)I
    .locals 1
    .param p0, "threeKeyMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 13
    packed-switch p0, :pswitch_data_0

    .line 21
    :goto_0
    :pswitch_0
    return v0

    .line 17
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
