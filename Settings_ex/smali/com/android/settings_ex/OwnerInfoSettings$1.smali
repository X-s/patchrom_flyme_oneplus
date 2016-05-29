.class Lcom/android/settings_ex/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OwnerInfoSettings;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/OwnerInfoSettings$1;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings$1;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    # getter for: Lcom/android/settings_ex/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/settings_ex/OwnerInfoSettings;->access$000(Lcom/android/settings_ex/OwnerInfoSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings$1;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    # getter for: Lcom/android/settings_ex/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/OwnerInfoSettings;->access$100(Lcom/android/settings_ex/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 91
    return-void
.end method
