.class Lcom/android/settings_ex/dashboard/SuggestionsChecks$1;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "SuggestionsChecks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/SuggestionsChecks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/SuggestionsChecks;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/SuggestionsChecks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/SuggestionsChecks;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks$1;->this$0:Lcom/android/settings_ex/dashboard/SuggestionsChecks;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method
