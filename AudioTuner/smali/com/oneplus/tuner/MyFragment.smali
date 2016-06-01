.class public Lcom/oneplus/tuner/MyFragment;
.super Landroid/app/Fragment;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private custom:Landroid/view/View;

.field private myCustom:Landroid/view/View;

.field private myconfig:Landroid/view/View;

.field private setting:Landroid/view/View;

.field private soundeffectSwitch:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 24
    const v0, 0x7f0b014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MyFragment;->myconfig:Landroid/view/View;

    .line 25
    const v0, 0x7f0b014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MyFragment;->myCustom:Landroid/view/View;

    .line 26
    const v0, 0x7f0b014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MyFragment;->custom:Landroid/view/View;

    .line 27
    const v0, 0x7f0b014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MyFragment;->soundeffectSwitch:Landroid/view/View;

    .line 28
    const v0, 0x7f0b0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MyFragment;->setting:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/MyFragment;->myconfig:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/oneplus/tuner/MyFragment;->myCustom:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/oneplus/tuner/MyFragment;->custom:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/MyFragment;->soundeffectSwitch:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/oneplus/tuner/MyFragment;->setting:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/oneplus/tuner/MyFragment;->myconfig:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/oneplus/tuner/MyFragment;->myCustom:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/oneplus/tuner/MyFragment;->custom:Landroid/view/View;

    if-ne v1, p1, :cond_2

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/tuner/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/MyFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/tuner/MyFragment;->soundeffectSwitch:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/oneplus/tuner/MyFragment;->setting:Landroid/view/View;

    if-ne v1, p1, :cond_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 19
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/tuner/MyFragment;->initView(Landroid/view/View;)V

    .line 20
    return-object v0
.end method
