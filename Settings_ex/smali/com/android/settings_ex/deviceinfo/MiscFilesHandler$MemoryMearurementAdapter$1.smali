.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->onDataInitFinish(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 223
    return-void
.end method
