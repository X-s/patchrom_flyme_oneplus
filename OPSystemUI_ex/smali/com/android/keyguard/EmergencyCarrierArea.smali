.class public Lcom/android/keyguard/EmergencyCarrierArea;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "EmergencyCarrierArea.java"


# instance fields
.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyCarrierArea;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 41
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    new-instance v1, Lcom/android/keyguard/EmergencyCarrierArea$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyCarrierArea$1;-><init>(Lcom/android/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    return-void
.end method

.method public setCarrierTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
