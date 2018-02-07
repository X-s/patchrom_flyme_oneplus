.class Lcom/android/settings_ex/localepicker/LocaleListEditor$1;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/localepicker/LocaleListEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/localepicker/LocaleListEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/localepicker/LocaleListEditor;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-virtual {v2}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    const/4 v4, 0x1

    .line 87
    invoke-static {v2, v3, v4}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v1

    .line 89
    .local v1, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-virtual {v2}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 91
    const/16 v3, 0x1001

    .line 89
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-virtual {v3}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getId()I

    move-result v3

    .line 89
    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 93
    const-string/jumbo v3, "localeListEditor"

    .line 89
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/ConcurrentModificationException;
    goto :goto_0
.end method
