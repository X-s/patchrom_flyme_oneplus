.class Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference$1;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference$1;->this$1:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference$1;->this$1:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->-get0(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference$1;->this$1:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference$1;->this$1:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference$1;->this$1:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method
