.class Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter$1;
.super Landroid/database/DataSetObserver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 522
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 523
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->-wrap0(Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;)V

    .line 521
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 527
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 528
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->-wrap1(Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;)V

    .line 526
    return-void
.end method
