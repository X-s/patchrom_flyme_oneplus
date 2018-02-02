.class public Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "ManualModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnobViewValueChangeEventArgs"
.end annotation


# instance fields
.field private final m_ControlType:Lcom/oneplus/camera/manual/ControlType;

.field private final m_Value:D


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/manual/ControlType;D)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "value"    # D

    .prologue
    .line 2997
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 2999
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 3000
    iput-wide p2, p0, Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;->m_Value:D

    .line 2997
    return-void
.end method


# virtual methods
.method public final getControlType()Lcom/oneplus/camera/manual/ControlType;
    .locals 1

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    return-object v0
.end method

.method public final getValue()D
    .locals 2

    .prologue
    .line 3018
    iget-wide v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;->m_Value:D

    return-wide v0
.end method
