.class public Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PasswordRequirementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/password/PasswordRequirementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordRequirementViewHolder"
.end annotation


# instance fields
.field private mDescriptionText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->mDescriptionText:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "itemView":Landroid/view/View;
    iput-object p1, p0, Lcom/android/settings_ex/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->mDescriptionText:Landroid/widget/TextView;

    .line 71
    return-void
.end method
