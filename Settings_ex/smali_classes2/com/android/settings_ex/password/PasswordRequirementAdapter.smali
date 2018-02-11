.class public Lcom/android/settings_ex/password/PasswordRequirementAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PasswordRequirementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequirements:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->setHasStableIds(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 64
    check-cast p1, Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->onBindViewHolder(Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 65
    invoke-static {p1}, Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->-get0(Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 44
    const v2, 0x7f04012f

    const/4 v3, 0x0

    .line 43
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setRequirements([Ljava/lang/String;)V
    .locals 0
    .param p1, "requirements"    # [Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method
