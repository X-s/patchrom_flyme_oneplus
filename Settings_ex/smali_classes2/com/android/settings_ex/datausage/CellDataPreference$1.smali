.class Lcom/android/settings_ex/datausage/CellDataPreference$1;
.super Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;
.source "CellDataPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/datausage/CellDataPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/CellDataPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/CellDataPreference;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings_ex/datausage/CellDataPreference$1;->this$0:Lcom/android/settings_ex/datausage/CellDataPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference$1;->this$0:Lcom/android/settings_ex/datausage/CellDataPreference;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/CellDataPreference;->-wrap0(Lcom/android/settings_ex/datausage/CellDataPreference;)V

    .line 168
    return-void
.end method
