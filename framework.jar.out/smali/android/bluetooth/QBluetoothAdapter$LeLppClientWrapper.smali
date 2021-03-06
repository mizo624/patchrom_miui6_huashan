.class Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
.super Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/QBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeLppClientWrapper"
.end annotation


# instance fields
.field private final client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/QBluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Ljava/lang/String;

.field private final mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;


# direct methods
.method public constructor <init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;Ljava/lang/String;Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p2, "adapterService"    # Landroid/bluetooth/IQBluetooth;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    .prologue
    invoke-direct {p0}, Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iput-object p3, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    iput-object p4, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    return-void
.end method


# virtual methods
.method public enableMonitor(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IQBluetooth;->enableLeLppRssiMonitor(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEnableRssiMonitor(Ljava/lang/String;II)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enable"    # I
    .param p3, "status"    # I

    .prologue
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v1, p2, p3}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onEnableRssiMonitor(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReadRssiThreshold(Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "low"    # I
    .param p3, "upper"    # I
    .param p4, "alert"    # I
    .param p5, "status"    # I

    .prologue
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v1, p2, p3, p4, p5}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onReadRssiThreshold(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRssiThresholdEvent(Ljava/lang/String;II)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "evtType"    # I
    .param p3, "rssi"    # I

    .prologue
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v1, p2, p3}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onRssiThresholdEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    return-void
.end method

.method public onUpdateLease()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v2}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onUpdateLease()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWriteRssiThreshold(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v1, p2}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onWriteRssiThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readRssiThreshold()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IQBluetooth;->readLeLppRssiThreshold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public register2(Z)Z
    .locals 3
    .param p1, "add"    # Z

    .prologue
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2, p0, p1}, Landroid/bluetooth/IQBluetooth;->registerLeLppRssiMonitorClient(Ljava/lang/String;Landroid/bluetooth/IQBluetoothAdapterCallback;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeRssiThreshold(BB)V
    .locals 3
    .param p1, "min"    # B
    .param p2, "max"    # B

    .prologue
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/bluetooth/IQBluetooth;->writeLeLppRssiThreshold(Ljava/lang/String;BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
