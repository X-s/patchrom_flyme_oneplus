.class public final Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keyboards"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCollator:Ljava/text/Collator;

.field public final mDeviceInfo:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

.field public final mKeyboardInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "deviceInfo"    # Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p2, "keyboardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mCollator:Ljava/text/Collator;

    .line 427
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 428
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mKeyboardInfoList:Ljava/util/ArrayList;

    .line 426
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;)I
    .locals 3
    .param p1, "another"    # Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v1, v1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v2, v2, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 432
    check-cast p1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;->compareTo(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;)I

    move-result v0

    return v0
.end method
