
kMain.o:     file format elf32-i386


Disassembly of section .text:

00100000 <inLong>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	83 ec 14             	sub    $0x14,%esp
  100006:	e8 3a 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10000b:	05 f5 5f 00 00       	add    $0x5ff5,%eax
  100010:	8b 45 08             	mov    0x8(%ebp),%eax
  100013:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  100017:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10001a:	89 c2                	mov    %eax,%edx
  10001c:	ed                   	in     (%dx),%eax
  10001d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100020:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100023:	c9                   	leave  
  100024:	c3                   	ret    

00100025 <outLong>:
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 04             	sub    $0x4,%esp
  10002b:	e8 15 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100030:	05 d0 5f 00 00       	add    $0x5fd0,%eax
  100035:	8b 45 08             	mov    0x8(%ebp),%eax
  100038:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10003c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10003f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100042:	ef                   	out    %eax,(%dx)
  100043:	90                   	nop
  100044:	c9                   	leave  
  100045:	c3                   	ret    

00100046 <inByte>:
  100046:	55                   	push   %ebp
  100047:	89 e5                	mov    %esp,%ebp
  100049:	83 ec 14             	sub    $0x14,%esp
  10004c:	e8 f4 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100051:	05 af 5f 00 00       	add    $0x5faf,%eax
  100056:	8b 45 08             	mov    0x8(%ebp),%eax
  100059:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  10005d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100060:	89 c2                	mov    %eax,%edx
  100062:	ec                   	in     (%dx),%al
  100063:	88 45 ff             	mov    %al,-0x1(%ebp)
  100066:	8a 45 ff             	mov    -0x1(%ebp),%al
  100069:	c9                   	leave  
  10006a:	c3                   	ret    

0010006b <outByte>:
  10006b:	55                   	push   %ebp
  10006c:	89 e5                	mov    %esp,%ebp
  10006e:	83 ec 08             	sub    $0x8,%esp
  100071:	e8 cf 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100076:	05 8a 5f 00 00       	add    $0x5f8a,%eax
  10007b:	8b 45 08             	mov    0x8(%ebp),%eax
  10007e:	8b 55 0c             	mov    0xc(%ebp),%edx
  100081:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100085:	88 d0                	mov    %dl,%al
  100087:	88 45 f8             	mov    %al,-0x8(%ebp)
  10008a:	8a 45 f8             	mov    -0x8(%ebp),%al
  10008d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100090:	ee                   	out    %al,(%dx)
  100091:	90                   	nop
  100092:	c9                   	leave  
  100093:	c3                   	ret    

00100094 <waitDisk>:
  100094:	55                   	push   %ebp
  100095:	89 e5                	mov    %esp,%ebp
  100097:	e8 a9 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10009c:	05 64 5f 00 00       	add    $0x5f64,%eax
  1000a1:	90                   	nop
  1000a2:	68 f7 01 00 00       	push   $0x1f7
  1000a7:	e8 9a ff ff ff       	call   100046 <inByte>
  1000ac:	83 c4 04             	add    $0x4,%esp
  1000af:	0f b6 c0             	movzbl %al,%eax
  1000b2:	25 c0 00 00 00       	and    $0xc0,%eax
  1000b7:	83 f8 40             	cmp    $0x40,%eax
  1000ba:	75 e6                	jne    1000a2 <waitDisk+0xe>
  1000bc:	90                   	nop
  1000bd:	c9                   	leave  
  1000be:	c3                   	ret    

001000bf <readSect>:
  1000bf:	55                   	push   %ebp
  1000c0:	89 e5                	mov    %esp,%ebp
  1000c2:	53                   	push   %ebx
  1000c3:	83 ec 10             	sub    $0x10,%esp
  1000c6:	e8 7a 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  1000cb:	05 35 5f 00 00       	add    $0x5f35,%eax
  1000d0:	e8 bf ff ff ff       	call   100094 <waitDisk>
  1000d5:	6a 01                	push   $0x1
  1000d7:	68 f2 01 00 00       	push   $0x1f2
  1000dc:	e8 8a ff ff ff       	call   10006b <outByte>
  1000e1:	83 c4 08             	add    $0x8,%esp
  1000e4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000e7:	0f be c0             	movsbl %al,%eax
  1000ea:	50                   	push   %eax
  1000eb:	68 f3 01 00 00       	push   $0x1f3
  1000f0:	e8 76 ff ff ff       	call   10006b <outByte>
  1000f5:	83 c4 08             	add    $0x8,%esp
  1000f8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000fb:	c1 f8 08             	sar    $0x8,%eax
  1000fe:	0f be c0             	movsbl %al,%eax
  100101:	50                   	push   %eax
  100102:	68 f4 01 00 00       	push   $0x1f4
  100107:	e8 5f ff ff ff       	call   10006b <outByte>
  10010c:	83 c4 08             	add    $0x8,%esp
  10010f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100112:	c1 f8 10             	sar    $0x10,%eax
  100115:	0f be c0             	movsbl %al,%eax
  100118:	50                   	push   %eax
  100119:	68 f5 01 00 00       	push   $0x1f5
  10011e:	e8 48 ff ff ff       	call   10006b <outByte>
  100123:	83 c4 08             	add    $0x8,%esp
  100126:	8b 45 0c             	mov    0xc(%ebp),%eax
  100129:	c1 f8 18             	sar    $0x18,%eax
  10012c:	83 c8 e0             	or     $0xffffffe0,%eax
  10012f:	0f be c0             	movsbl %al,%eax
  100132:	50                   	push   %eax
  100133:	68 f6 01 00 00       	push   $0x1f6
  100138:	e8 2e ff ff ff       	call   10006b <outByte>
  10013d:	83 c4 08             	add    $0x8,%esp
  100140:	6a 20                	push   $0x20
  100142:	68 f7 01 00 00       	push   $0x1f7
  100147:	e8 1f ff ff ff       	call   10006b <outByte>
  10014c:	83 c4 08             	add    $0x8,%esp
  10014f:	e8 40 ff ff ff       	call   100094 <waitDisk>
  100154:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10015b:	eb 22                	jmp    10017f <readSect+0xc0>
  10015d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100160:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100167:	8b 45 08             	mov    0x8(%ebp),%eax
  10016a:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
  10016d:	68 f0 01 00 00       	push   $0x1f0
  100172:	e8 89 fe ff ff       	call   100000 <inLong>
  100177:	83 c4 04             	add    $0x4,%esp
  10017a:	89 03                	mov    %eax,(%ebx)
  10017c:	ff 45 f8             	incl   -0x8(%ebp)
  10017f:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
  100183:	7e d8                	jle    10015d <readSect+0x9e>
  100185:	90                   	nop
  100186:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100189:	c9                   	leave  
  10018a:	c3                   	ret    

0010018b <writeSect>:
  10018b:	55                   	push   %ebp
  10018c:	89 e5                	mov    %esp,%ebp
  10018e:	83 ec 10             	sub    $0x10,%esp
  100191:	e8 af 02 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100196:	05 6a 5e 00 00       	add    $0x5e6a,%eax
  10019b:	e8 f4 fe ff ff       	call   100094 <waitDisk>
  1001a0:	6a 01                	push   $0x1
  1001a2:	68 f2 01 00 00       	push   $0x1f2
  1001a7:	e8 bf fe ff ff       	call   10006b <outByte>
  1001ac:	83 c4 08             	add    $0x8,%esp
  1001af:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001b2:	0f be c0             	movsbl %al,%eax
  1001b5:	50                   	push   %eax
  1001b6:	68 f3 01 00 00       	push   $0x1f3
  1001bb:	e8 ab fe ff ff       	call   10006b <outByte>
  1001c0:	83 c4 08             	add    $0x8,%esp
  1001c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001c6:	c1 f8 08             	sar    $0x8,%eax
  1001c9:	0f be c0             	movsbl %al,%eax
  1001cc:	50                   	push   %eax
  1001cd:	68 f4 01 00 00       	push   $0x1f4
  1001d2:	e8 94 fe ff ff       	call   10006b <outByte>
  1001d7:	83 c4 08             	add    $0x8,%esp
  1001da:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001dd:	c1 f8 10             	sar    $0x10,%eax
  1001e0:	0f be c0             	movsbl %al,%eax
  1001e3:	50                   	push   %eax
  1001e4:	68 f5 01 00 00       	push   $0x1f5
  1001e9:	e8 7d fe ff ff       	call   10006b <outByte>
  1001ee:	83 c4 08             	add    $0x8,%esp
  1001f1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001f4:	c1 f8 18             	sar    $0x18,%eax
  1001f7:	83 c8 e0             	or     $0xffffffe0,%eax
  1001fa:	0f be c0             	movsbl %al,%eax
  1001fd:	50                   	push   %eax
  1001fe:	68 f6 01 00 00       	push   $0x1f6
  100203:	e8 63 fe ff ff       	call   10006b <outByte>
  100208:	83 c4 08             	add    $0x8,%esp
  10020b:	6a 30                	push   $0x30
  10020d:	68 f7 01 00 00       	push   $0x1f7
  100212:	e8 54 fe ff ff       	call   10006b <outByte>
  100217:	83 c4 08             	add    $0x8,%esp
  10021a:	e8 75 fe ff ff       	call   100094 <waitDisk>
  10021f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100226:	eb 22                	jmp    10024a <writeSect+0xbf>
  100228:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10022b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100232:	8b 45 08             	mov    0x8(%ebp),%eax
  100235:	01 d0                	add    %edx,%eax
  100237:	8b 00                	mov    (%eax),%eax
  100239:	50                   	push   %eax
  10023a:	68 f0 01 00 00       	push   $0x1f0
  10023f:	e8 e1 fd ff ff       	call   100025 <outLong>
  100244:	83 c4 08             	add    $0x8,%esp
  100247:	ff 45 fc             	incl   -0x4(%ebp)
  10024a:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  10024e:	7e d8                	jle    100228 <writeSect+0x9d>
  100250:	90                   	nop
  100251:	c9                   	leave  
  100252:	c3                   	ret    

00100253 <diskRead>:
  100253:	55                   	push   %ebp
  100254:	89 e5                	mov    %esp,%ebp
  100256:	81 ec 10 02 00 00    	sub    $0x210,%esp
  10025c:	e8 e4 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100261:	05 9f 5d 00 00       	add    $0x5d9f,%eax
  100266:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10026d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100274:	8b 45 14             	mov    0x14(%ebp),%eax
  100277:	85 c0                	test   %eax,%eax
  100279:	79 05                	jns    100280 <diskRead+0x2d>
  10027b:	05 ff 01 00 00       	add    $0x1ff,%eax
  100280:	c1 f8 09             	sar    $0x9,%eax
  100283:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100286:	8b 45 14             	mov    0x14(%ebp),%eax
  100289:	25 ff 01 00 80       	and    $0x800001ff,%eax
  10028e:	85 c0                	test   %eax,%eax
  100290:	79 07                	jns    100299 <diskRead+0x46>
  100292:	48                   	dec    %eax
  100293:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100298:	40                   	inc    %eax
  100299:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10029c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10029f:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1002a5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1002a8:	01 d0                	add    %edx,%eax
  1002aa:	50                   	push   %eax
  1002ab:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1002b1:	50                   	push   %eax
  1002b2:	e8 08 fe ff ff       	call   1000bf <readSect>
  1002b7:	83 c4 08             	add    $0x8,%esp
  1002ba:	ff 45 f8             	incl   -0x8(%ebp)
  1002bd:	eb 5e                	jmp    10031d <diskRead+0xca>
  1002bf:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002c5:	01 d0                	add    %edx,%eax
  1002c7:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1002cc:	85 c0                	test   %eax,%eax
  1002ce:	79 07                	jns    1002d7 <diskRead+0x84>
  1002d0:	48                   	dec    %eax
  1002d1:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1002d6:	40                   	inc    %eax
  1002d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1002da:	8b 55 08             	mov    0x8(%ebp),%edx
  1002dd:	01 ca                	add    %ecx,%edx
  1002df:	8a 84 05 f0 fd ff ff 	mov    -0x210(%ebp,%eax,1),%al
  1002e6:	88 02                	mov    %al,(%edx)
  1002e8:	ff 45 fc             	incl   -0x4(%ebp)
  1002eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002f1:	01 d0                	add    %edx,%eax
  1002f3:	25 ff 01 00 00       	and    $0x1ff,%eax
  1002f8:	85 c0                	test   %eax,%eax
  1002fa:	75 21                	jne    10031d <diskRead+0xca>
  1002fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002ff:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  100305:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100308:	01 d0                	add    %edx,%eax
  10030a:	50                   	push   %eax
  10030b:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100311:	50                   	push   %eax
  100312:	e8 a8 fd ff ff       	call   1000bf <readSect>
  100317:	83 c4 08             	add    $0x8,%esp
  10031a:	ff 45 f8             	incl   -0x8(%ebp)
  10031d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100320:	0f af 45 10          	imul   0x10(%ebp),%eax
  100324:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  100327:	7c 96                	jl     1002bf <diskRead+0x6c>
  100329:	90                   	nop
  10032a:	c9                   	leave  
  10032b:	c3                   	ret    

0010032c <diskWrite>:
  10032c:	55                   	push   %ebp
  10032d:	89 e5                	mov    %esp,%ebp
  10032f:	81 ec 10 02 00 00    	sub    $0x210,%esp
  100335:	e8 0b 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10033a:	05 c6 5c 00 00       	add    $0x5cc6,%eax
  10033f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100346:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10034d:	8b 45 14             	mov    0x14(%ebp),%eax
  100350:	85 c0                	test   %eax,%eax
  100352:	79 05                	jns    100359 <diskWrite+0x2d>
  100354:	05 ff 01 00 00       	add    $0x1ff,%eax
  100359:	c1 f8 09             	sar    $0x9,%eax
  10035c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10035f:	8b 45 14             	mov    0x14(%ebp),%eax
  100362:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100367:	85 c0                	test   %eax,%eax
  100369:	79 07                	jns    100372 <diskWrite+0x46>
  10036b:	48                   	dec    %eax
  10036c:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100371:	40                   	inc    %eax
  100372:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100375:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100378:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10037e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100381:	01 d0                	add    %edx,%eax
  100383:	50                   	push   %eax
  100384:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10038a:	50                   	push   %eax
  10038b:	e8 2f fd ff ff       	call   1000bf <readSect>
  100390:	83 c4 08             	add    $0x8,%esp
  100393:	eb 7f                	jmp    100414 <diskWrite+0xe8>
  100395:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100398:	8b 45 08             	mov    0x8(%ebp),%eax
  10039b:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  10039e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003a4:	01 d0                	add    %edx,%eax
  1003a6:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1003ab:	85 c0                	test   %eax,%eax
  1003ad:	79 07                	jns    1003b6 <diskWrite+0x8a>
  1003af:	48                   	dec    %eax
  1003b0:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1003b5:	40                   	inc    %eax
  1003b6:	89 c2                	mov    %eax,%edx
  1003b8:	8a 01                	mov    (%ecx),%al
  1003ba:	88 84 15 f0 fd ff ff 	mov    %al,-0x210(%ebp,%edx,1)
  1003c1:	ff 45 fc             	incl   -0x4(%ebp)
  1003c4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003ca:	01 d0                	add    %edx,%eax
  1003cc:	25 ff 01 00 00       	and    $0x1ff,%eax
  1003d1:	85 c0                	test   %eax,%eax
  1003d3:	75 3f                	jne    100414 <diskWrite+0xe8>
  1003d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003d8:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003de:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1003e1:	01 d0                	add    %edx,%eax
  1003e3:	50                   	push   %eax
  1003e4:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1003ea:	50                   	push   %eax
  1003eb:	e8 9b fd ff ff       	call   10018b <writeSect>
  1003f0:	83 c4 08             	add    $0x8,%esp
  1003f3:	ff 45 f8             	incl   -0x8(%ebp)
  1003f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003f9:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003ff:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100402:	01 d0                	add    %edx,%eax
  100404:	50                   	push   %eax
  100405:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10040b:	50                   	push   %eax
  10040c:	e8 ae fc ff ff       	call   1000bf <readSect>
  100411:	83 c4 08             	add    $0x8,%esp
  100414:	8b 45 0c             	mov    0xc(%ebp),%eax
  100417:	0f af 45 10          	imul   0x10(%ebp),%eax
  10041b:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10041e:	0f 8c 71 ff ff ff    	jl     100395 <diskWrite+0x69>
  100424:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100427:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10042d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100430:	01 d0                	add    %edx,%eax
  100432:	50                   	push   %eax
  100433:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100439:	50                   	push   %eax
  10043a:	e8 4c fd ff ff       	call   10018b <writeSect>
  10043f:	83 c4 08             	add    $0x8,%esp
  100442:	90                   	nop
  100443:	c9                   	leave  
  100444:	c3                   	ret    

00100445 <__x86.get_pc_thunk.ax>:
  100445:	8b 04 24             	mov    (%esp),%eax
  100448:	c3                   	ret    

00100449 <readSuperBlock>:
  100449:	55                   	push   %ebp
  10044a:	89 e5                	mov    %esp,%ebp
  10044c:	53                   	push   %ebx
  10044d:	83 ec 04             	sub    $0x4,%esp
  100450:	e8 f0 ff ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100455:	05 ab 5b 00 00       	add    $0x5bab,%eax
  10045a:	6a 00                	push   $0x0
  10045c:	6a 01                	push   $0x1
  10045e:	68 00 04 00 00       	push   $0x400
  100463:	ff 75 08             	pushl  0x8(%ebp)
  100466:	89 c3                	mov    %eax,%ebx
  100468:	e8 e6 fd ff ff       	call   100253 <diskRead>
  10046d:	83 c4 10             	add    $0x10,%esp
  100470:	b8 00 00 00 00       	mov    $0x0,%eax
  100475:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100478:	c9                   	leave  
  100479:	c3                   	ret    

0010047a <readBlock>:
  10047a:	55                   	push   %ebp
  10047b:	89 e5                	mov    %esp,%ebp
  10047d:	56                   	push   %esi
  10047e:	53                   	push   %ebx
  10047f:	83 ec 20             	sub    $0x20,%esp
  100482:	e8 ae 03 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100487:	81 c3 79 5b 00 00    	add    $0x5b79,%ebx
  10048d:	89 e0                	mov    %esp,%eax
  10048f:	89 c6                	mov    %eax,%esi
  100491:	8b 45 08             	mov    0x8(%ebp),%eax
  100494:	8b 40 14             	mov    0x14(%eax),%eax
  100497:	85 c0                	test   %eax,%eax
  100499:	79 03                	jns    10049e <readBlock+0x24>
  10049b:	83 c0 03             	add    $0x3,%eax
  10049e:	c1 f8 02             	sar    $0x2,%eax
  1004a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004a4:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
  1004ab:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1004ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b1:	01 d0                	add    %edx,%eax
  1004b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1004b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b9:	8d 50 ff             	lea    -0x1(%eax),%edx
  1004bc:	89 55 e8             	mov    %edx,-0x18(%ebp)
  1004bf:	c1 e0 02             	shl    $0x2,%eax
  1004c2:	8d 50 03             	lea    0x3(%eax),%edx
  1004c5:	b8 10 00 00 00       	mov    $0x10,%eax
  1004ca:	48                   	dec    %eax
  1004cb:	01 d0                	add    %edx,%eax
  1004cd:	b9 10 00 00 00       	mov    $0x10,%ecx
  1004d2:	ba 00 00 00 00       	mov    $0x0,%edx
  1004d7:	f7 f1                	div    %ecx
  1004d9:	6b c0 10             	imul   $0x10,%eax,%eax
  1004dc:	29 c4                	sub    %eax,%esp
  1004de:	89 e0                	mov    %esp,%eax
  1004e0:	83 c0 03             	add    $0x3,%eax
  1004e3:	c1 e8 02             	shr    $0x2,%eax
  1004e6:	c1 e0 02             	shl    $0x2,%eax
  1004e9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1004ec:	8b 45 10             	mov    0x10(%ebp),%eax
  1004ef:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1004f2:	7d 2b                	jge    10051f <readBlock+0xa5>
  1004f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004f7:	8b 55 10             	mov    0x10(%ebp),%edx
  1004fa:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
  1004fe:	c1 e0 09             	shl    $0x9,%eax
  100501:	89 c2                	mov    %eax,%edx
  100503:	8b 45 08             	mov    0x8(%ebp),%eax
  100506:	8b 40 14             	mov    0x14(%eax),%eax
  100509:	52                   	push   %edx
  10050a:	50                   	push   %eax
  10050b:	6a 01                	push   $0x1
  10050d:	ff 75 14             	pushl  0x14(%ebp)
  100510:	e8 3e fd ff ff       	call   100253 <diskRead>
  100515:	83 c4 10             	add    $0x10,%esp
  100518:	b8 00 00 00 00       	mov    $0x0,%eax
  10051d:	eb 5d                	jmp    10057c <readBlock+0x102>
  10051f:	8b 45 10             	mov    0x10(%ebp),%eax
  100522:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  100525:	7d 50                	jge    100577 <readBlock+0xfd>
  100527:	8b 45 0c             	mov    0xc(%ebp),%eax
  10052a:	8b 40 44             	mov    0x44(%eax),%eax
  10052d:	c1 e0 09             	shl    $0x9,%eax
  100530:	89 c1                	mov    %eax,%ecx
  100532:	8b 45 08             	mov    0x8(%ebp),%eax
  100535:	8b 50 14             	mov    0x14(%eax),%edx
  100538:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10053b:	51                   	push   %ecx
  10053c:	52                   	push   %edx
  10053d:	6a 01                	push   $0x1
  10053f:	50                   	push   %eax
  100540:	e8 0e fd ff ff       	call   100253 <diskRead>
  100545:	83 c4 10             	add    $0x10,%esp
  100548:	8b 45 10             	mov    0x10(%ebp),%eax
  10054b:	2b 45 f0             	sub    -0x10(%ebp),%eax
  10054e:	89 c2                	mov    %eax,%edx
  100550:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100553:	8b 04 90             	mov    (%eax,%edx,4),%eax
  100556:	c1 e0 09             	shl    $0x9,%eax
  100559:	89 c2                	mov    %eax,%edx
  10055b:	8b 45 08             	mov    0x8(%ebp),%eax
  10055e:	8b 40 14             	mov    0x14(%eax),%eax
  100561:	52                   	push   %edx
  100562:	50                   	push   %eax
  100563:	6a 01                	push   $0x1
  100565:	ff 75 14             	pushl  0x14(%ebp)
  100568:	e8 e6 fc ff ff       	call   100253 <diskRead>
  10056d:	83 c4 10             	add    $0x10,%esp
  100570:	b8 00 00 00 00       	mov    $0x0,%eax
  100575:	eb 05                	jmp    10057c <readBlock+0x102>
  100577:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10057c:	89 f4                	mov    %esi,%esp
  10057e:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100581:	5b                   	pop    %ebx
  100582:	5e                   	pop    %esi
  100583:	5d                   	pop    %ebp
  100584:	c3                   	ret    

00100585 <readInode>:
  100585:	55                   	push   %ebp
  100586:	89 e5                	mov    %esp,%ebp
  100588:	57                   	push   %edi
  100589:	56                   	push   %esi
  10058a:	53                   	push   %ebx
  10058b:	83 ec 3c             	sub    $0x3c,%esp
  10058e:	e8 a2 02 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100593:	81 c3 6d 5a 00 00    	add    $0x5a6d,%ebx
  100599:	89 e0                	mov    %esp,%eax
  10059b:	89 c6                	mov    %eax,%esi
  10059d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1005a4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1005ab:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  1005b2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1005b9:	8b 45 10             	mov    0x10(%ebp),%eax
  1005bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1005c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1005c5:	8b 40 14             	mov    0x14(%eax),%eax
  1005c8:	8d 50 ff             	lea    -0x1(%eax),%edx
  1005cb:	89 55 d0             	mov    %edx,-0x30(%ebp)
  1005ce:	89 c2                	mov    %eax,%edx
  1005d0:	b8 10 00 00 00       	mov    $0x10,%eax
  1005d5:	48                   	dec    %eax
  1005d6:	01 d0                	add    %edx,%eax
  1005d8:	bf 10 00 00 00       	mov    $0x10,%edi
  1005dd:	ba 00 00 00 00       	mov    $0x0,%edx
  1005e2:	f7 f7                	div    %edi
  1005e4:	6b c0 10             	imul   $0x10,%eax,%eax
  1005e7:	29 c4                	sub    %eax,%esp
  1005e9:	89 e0                	mov    %esp,%eax
  1005eb:	83 c0 00             	add    $0x0,%eax
  1005ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
  1005f1:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
  1005f8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1005ff:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
  100606:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
  10060d:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  100611:	74 0e                	je     100621 <readInode+0x9c>
  100613:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100616:	8b 45 14             	mov    0x14(%ebp),%eax
  100619:	01 d0                	add    %edx,%eax
  10061b:	8a 00                	mov    (%eax),%al
  10061d:	84 c0                	test   %al,%al
  10061f:	75 0a                	jne    10062b <readInode+0xa6>
  100621:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100626:	e9 00 02 00 00       	jmp    10082b <readInode+0x2a6>
  10062b:	83 ec 04             	sub    $0x4,%esp
  10062e:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100631:	50                   	push   %eax
  100632:	6a 2f                	push   $0x2f
  100634:	ff 75 14             	pushl  0x14(%ebp)
  100637:	e8 37 3a 00 00       	call   104073 <stringChr>
  10063c:	83 c4 10             	add    $0x10,%esp
  10063f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100642:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100646:	74 07                	je     10064f <readInode+0xca>
  100648:	8b 45 c0             	mov    -0x40(%ebp),%eax
  10064b:	85 c0                	test   %eax,%eax
  10064d:	74 0a                	je     100659 <readInode+0xd4>
  10064f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100654:	e9 d2 01 00 00       	jmp    10082b <readInode+0x2a6>
  100659:	ff 45 e4             	incl   -0x1c(%ebp)
  10065c:	8b 45 08             	mov    0x8(%ebp),%eax
  10065f:	8b 40 20             	mov    0x20(%eax),%eax
  100662:	c1 e0 09             	shl    $0x9,%eax
  100665:	89 c2                	mov    %eax,%edx
  100667:	8b 45 10             	mov    0x10(%ebp),%eax
  10066a:	89 10                	mov    %edx,(%eax)
  10066c:	8b 45 10             	mov    0x10(%ebp),%eax
  10066f:	8b 00                	mov    (%eax),%eax
  100671:	50                   	push   %eax
  100672:	6a 01                	push   $0x1
  100674:	68 80 00 00 00       	push   $0x80
  100679:	ff 75 0c             	pushl  0xc(%ebp)
  10067c:	e8 d2 fb ff ff       	call   100253 <diskRead>
  100681:	83 c4 10             	add    $0x10,%esp
  100684:	e9 8b 01 00 00       	jmp    100814 <readInode+0x28f>
  100689:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10068c:	8b 45 14             	mov    0x14(%ebp),%eax
  10068f:	01 c2                	add    %eax,%edx
  100691:	83 ec 04             	sub    $0x4,%esp
  100694:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100697:	50                   	push   %eax
  100698:	6a 2f                	push   $0x2f
  10069a:	52                   	push   %edx
  10069b:	e8 d3 39 00 00       	call   104073 <stringChr>
  1006a0:	83 c4 10             	add    $0x10,%esp
  1006a3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1006a6:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1006aa:	75 11                	jne    1006bd <readInode+0x138>
  1006ac:	8b 45 c0             	mov    -0x40(%ebp),%eax
  1006af:	85 c0                	test   %eax,%eax
  1006b1:	75 0a                	jne    1006bd <readInode+0x138>
  1006b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006b8:	e9 6e 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006bd:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  1006c1:	75 09                	jne    1006cc <readInode+0x147>
  1006c3:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
  1006ca:	eb 15                	jmp    1006e1 <readInode+0x15c>
  1006cc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006cf:	8b 00                	mov    (%eax),%eax
  1006d1:	66 83 f8 01          	cmp    $0x1,%ax
  1006d5:	75 0a                	jne    1006e1 <readInode+0x15c>
  1006d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006dc:	e9 4a 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006e1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006e4:	8b 40 04             	mov    0x4(%eax),%eax
  1006e7:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  1006ea:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1006f1:	e9 ea 00 00 00       	jmp    1007e0 <readInode+0x25b>
  1006f6:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1006f9:	50                   	push   %eax
  1006fa:	ff 75 d8             	pushl  -0x28(%ebp)
  1006fd:	ff 75 0c             	pushl  0xc(%ebp)
  100700:	ff 75 08             	pushl  0x8(%ebp)
  100703:	e8 72 fd ff ff       	call   10047a <readBlock>
  100708:	83 c4 10             	add    $0x10,%esp
  10070b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  10070e:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100712:	75 0a                	jne    10071e <readInode+0x199>
  100714:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100719:	e9 0d 01 00 00       	jmp    10082b <readInode+0x2a6>
  10071e:	8b 45 cc             	mov    -0x34(%ebp),%eax
  100721:	89 45 c8             	mov    %eax,-0x38(%ebp)
  100724:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10072b:	e9 85 00 00 00       	jmp    1007b5 <readInode+0x230>
  100730:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100733:	c1 e0 07             	shl    $0x7,%eax
  100736:	89 c2                	mov    %eax,%edx
  100738:	8b 45 c8             	mov    -0x38(%ebp),%eax
  10073b:	01 d0                	add    %edx,%eax
  10073d:	8b 00                	mov    (%eax),%eax
  10073f:	85 c0                	test   %eax,%eax
  100741:	74 6e                	je     1007b1 <readInode+0x22c>
  100743:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100746:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  100749:	8b 55 14             	mov    0x14(%ebp),%edx
  10074c:	01 d1                	add    %edx,%ecx
  10074e:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100751:	89 d7                	mov    %edx,%edi
  100753:	c1 e7 07             	shl    $0x7,%edi
  100756:	8b 55 c8             	mov    -0x38(%ebp),%edx
  100759:	01 fa                	add    %edi,%edx
  10075b:	83 c2 04             	add    $0x4,%edx
  10075e:	83 ec 04             	sub    $0x4,%esp
  100761:	50                   	push   %eax
  100762:	51                   	push   %ecx
  100763:	52                   	push   %edx
  100764:	e8 31 3a 00 00       	call   10419a <stringCmp>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	85 c0                	test   %eax,%eax
  10076e:	75 42                	jne    1007b2 <readInode+0x22d>
  100770:	8b 45 08             	mov    0x8(%ebp),%eax
  100773:	8b 40 20             	mov    0x20(%eax),%eax
  100776:	c1 e0 09             	shl    $0x9,%eax
  100779:	89 c2                	mov    %eax,%edx
  10077b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10077e:	c1 e0 07             	shl    $0x7,%eax
  100781:	89 c1                	mov    %eax,%ecx
  100783:	8b 45 c8             	mov    -0x38(%ebp),%eax
  100786:	01 c8                	add    %ecx,%eax
  100788:	8b 00                	mov    (%eax),%eax
  10078a:	48                   	dec    %eax
  10078b:	c1 e0 07             	shl    $0x7,%eax
  10078e:	01 d0                	add    %edx,%eax
  100790:	89 c2                	mov    %eax,%edx
  100792:	8b 45 10             	mov    0x10(%ebp),%eax
  100795:	89 10                	mov    %edx,(%eax)
  100797:	8b 45 10             	mov    0x10(%ebp),%eax
  10079a:	8b 00                	mov    (%eax),%eax
  10079c:	50                   	push   %eax
  10079d:	6a 01                	push   $0x1
  10079f:	68 80 00 00 00       	push   $0x80
  1007a4:	ff 75 0c             	pushl  0xc(%ebp)
  1007a7:	e8 a7 fa ff ff       	call   100253 <diskRead>
  1007ac:	83 c4 10             	add    $0x10,%esp
  1007af:	eb 1a                	jmp    1007cb <readInode+0x246>
  1007b1:	90                   	nop
  1007b2:	ff 45 dc             	incl   -0x24(%ebp)
  1007b5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007b8:	8b 40 14             	mov    0x14(%eax),%eax
  1007bb:	c1 e8 07             	shr    $0x7,%eax
  1007be:	89 c2                	mov    %eax,%edx
  1007c0:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007c3:	39 c2                	cmp    %eax,%edx
  1007c5:	0f 87 65 ff ff ff    	ja     100730 <readInode+0x1ab>
  1007cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1007ce:	8b 40 14             	mov    0x14(%eax),%eax
  1007d1:	c1 e8 07             	shr    $0x7,%eax
  1007d4:	89 c2                	mov    %eax,%edx
  1007d6:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007d9:	39 c2                	cmp    %eax,%edx
  1007db:	77 11                	ja     1007ee <readInode+0x269>
  1007dd:	ff 45 d8             	incl   -0x28(%ebp)
  1007e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007e3:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007e6:	0f 8c 0a ff ff ff    	jl     1006f6 <readInode+0x171>
  1007ec:	eb 01                	jmp    1007ef <readInode+0x26a>
  1007ee:	90                   	nop
  1007ef:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007f2:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007f5:	7d 16                	jge    10080d <readInode+0x288>
  1007f7:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  1007fb:	75 09                	jne    100806 <readInode+0x281>
  1007fd:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100800:	40                   	inc    %eax
  100801:	01 45 e4             	add    %eax,-0x1c(%ebp)
  100804:	eb 0e                	jmp    100814 <readInode+0x28f>
  100806:	b8 00 00 00 00       	mov    $0x0,%eax
  10080b:	eb 1e                	jmp    10082b <readInode+0x2a6>
  10080d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100812:	eb 17                	jmp    10082b <readInode+0x2a6>
  100814:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100817:	8b 45 14             	mov    0x14(%ebp),%eax
  10081a:	01 d0                	add    %edx,%eax
  10081c:	8a 00                	mov    (%eax),%al
  10081e:	84 c0                	test   %al,%al
  100820:	0f 85 63 fe ff ff    	jne    100689 <readInode+0x104>
  100826:	b8 00 00 00 00       	mov    $0x0,%eax
  10082b:	89 f4                	mov    %esi,%esp
  10082d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100830:	5b                   	pop    %ebx
  100831:	5e                   	pop    %esi
  100832:	5f                   	pop    %edi
  100833:	5d                   	pop    %ebp
  100834:	c3                   	ret    

00100835 <__x86.get_pc_thunk.bx>:
  100835:	8b 1c 24             	mov    (%esp),%ebx
  100838:	c3                   	ret    

00100839 <outByte>:
  100839:	55                   	push   %ebp
  10083a:	89 e5                	mov    %esp,%ebp
  10083c:	83 ec 08             	sub    $0x8,%esp
  10083f:	e8 01 fc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100844:	05 bc 57 00 00       	add    $0x57bc,%eax
  100849:	8b 45 08             	mov    0x8(%ebp),%eax
  10084c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10084f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100853:	88 d0                	mov    %dl,%al
  100855:	88 45 f8             	mov    %al,-0x8(%ebp)
  100858:	8a 45 f8             	mov    -0x8(%ebp),%al
  10085b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10085e:	ee                   	out    %al,(%dx)
  10085f:	90                   	nop
  100860:	c9                   	leave  
  100861:	c3                   	ret    

00100862 <initIntr>:
  100862:	55                   	push   %ebp
  100863:	89 e5                	mov    %esp,%ebp
  100865:	e8 db fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10086a:	05 96 57 00 00       	add    $0x5796,%eax
  10086f:	6a 11                	push   $0x11
  100871:	6a 20                	push   $0x20
  100873:	e8 c1 ff ff ff       	call   100839 <outByte>
  100878:	83 c4 08             	add    $0x8,%esp
  10087b:	6a 11                	push   $0x11
  10087d:	68 a0 00 00 00       	push   $0xa0
  100882:	e8 b2 ff ff ff       	call   100839 <outByte>
  100887:	83 c4 08             	add    $0x8,%esp
  10088a:	6a 20                	push   $0x20
  10088c:	6a 21                	push   $0x21
  10088e:	e8 a6 ff ff ff       	call   100839 <outByte>
  100893:	83 c4 08             	add    $0x8,%esp
  100896:	6a 28                	push   $0x28
  100898:	68 a1 00 00 00       	push   $0xa1
  10089d:	e8 97 ff ff ff       	call   100839 <outByte>
  1008a2:	83 c4 08             	add    $0x8,%esp
  1008a5:	6a 04                	push   $0x4
  1008a7:	6a 21                	push   $0x21
  1008a9:	e8 8b ff ff ff       	call   100839 <outByte>
  1008ae:	83 c4 08             	add    $0x8,%esp
  1008b1:	6a 02                	push   $0x2
  1008b3:	68 a1 00 00 00       	push   $0xa1
  1008b8:	e8 7c ff ff ff       	call   100839 <outByte>
  1008bd:	83 c4 08             	add    $0x8,%esp
  1008c0:	6a 03                	push   $0x3
  1008c2:	6a 21                	push   $0x21
  1008c4:	e8 70 ff ff ff       	call   100839 <outByte>
  1008c9:	83 c4 08             	add    $0x8,%esp
  1008cc:	6a 03                	push   $0x3
  1008ce:	68 a1 00 00 00       	push   $0xa1
  1008d3:	e8 61 ff ff ff       	call   100839 <outByte>
  1008d8:	83 c4 08             	add    $0x8,%esp
  1008db:	90                   	nop
  1008dc:	c9                   	leave  
  1008dd:	c3                   	ret    

001008de <saveIdt>:
  1008de:	55                   	push   %ebp
  1008df:	89 e5                	mov    %esp,%ebp
  1008e1:	e8 5f fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1008e6:	05 1a 57 00 00       	add    $0x571a,%eax
  1008eb:	8b 55 0c             	mov    0xc(%ebp),%edx
  1008ee:	4a                   	dec    %edx
  1008ef:	66 89 90 20 01 00 00 	mov    %dx,0x120(%eax)
  1008f6:	8b 55 08             	mov    0x8(%ebp),%edx
  1008f9:	66 89 90 22 01 00 00 	mov    %dx,0x122(%eax)
  100900:	8b 55 08             	mov    0x8(%ebp),%edx
  100903:	c1 ea 10             	shr    $0x10,%edx
  100906:	66 89 90 24 01 00 00 	mov    %dx,0x124(%eax)
  10090d:	8d 80 20 01 00 00    	lea    0x120(%eax),%eax
  100913:	0f 01 18             	lidtl  (%eax)
  100916:	90                   	nop
  100917:	5d                   	pop    %ebp
  100918:	c3                   	ret    

00100919 <setIntr>:
  100919:	55                   	push   %ebp
  10091a:	89 e5                	mov    %esp,%ebp
  10091c:	e8 24 fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100921:	05 df 56 00 00       	add    $0x56df,%eax
  100926:	8b 45 10             	mov    0x10(%ebp),%eax
  100929:	8b 55 08             	mov    0x8(%ebp),%edx
  10092c:	66 89 02             	mov    %ax,(%edx)
  10092f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100932:	c1 e0 03             	shl    $0x3,%eax
  100935:	8b 55 08             	mov    0x8(%ebp),%edx
  100938:	66 89 42 02          	mov    %ax,0x2(%edx)
  10093c:	8b 45 08             	mov    0x8(%ebp),%eax
  10093f:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100943:	8b 45 08             	mov    0x8(%ebp),%eax
  100946:	8a 50 05             	mov    0x5(%eax),%dl
  100949:	83 e2 f0             	and    $0xfffffff0,%edx
  10094c:	83 ca 0e             	or     $0xe,%edx
  10094f:	88 50 05             	mov    %dl,0x5(%eax)
  100952:	8b 45 08             	mov    0x8(%ebp),%eax
  100955:	8a 50 05             	mov    0x5(%eax),%dl
  100958:	83 e2 ef             	and    $0xffffffef,%edx
  10095b:	88 50 05             	mov    %dl,0x5(%eax)
  10095e:	8b 45 14             	mov    0x14(%ebp),%eax
  100961:	88 c2                	mov    %al,%dl
  100963:	83 e2 03             	and    $0x3,%edx
  100966:	8b 45 08             	mov    0x8(%ebp),%eax
  100969:	83 e2 03             	and    $0x3,%edx
  10096c:	88 d1                	mov    %dl,%cl
  10096e:	c1 e1 05             	shl    $0x5,%ecx
  100971:	8a 50 05             	mov    0x5(%eax),%dl
  100974:	83 e2 9f             	and    $0xffffff9f,%edx
  100977:	09 ca                	or     %ecx,%edx
  100979:	88 50 05             	mov    %dl,0x5(%eax)
  10097c:	8b 45 08             	mov    0x8(%ebp),%eax
  10097f:	8a 50 05             	mov    0x5(%eax),%dl
  100982:	83 ca 80             	or     $0xffffff80,%edx
  100985:	88 50 05             	mov    %dl,0x5(%eax)
  100988:	8b 45 10             	mov    0x10(%ebp),%eax
  10098b:	c1 e8 10             	shr    $0x10,%eax
  10098e:	8b 55 08             	mov    0x8(%ebp),%edx
  100991:	66 89 42 06          	mov    %ax,0x6(%edx)
  100995:	90                   	nop
  100996:	5d                   	pop    %ebp
  100997:	c3                   	ret    

00100998 <setTrap>:
  100998:	55                   	push   %ebp
  100999:	89 e5                	mov    %esp,%ebp
  10099b:	e8 a5 fa ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1009a0:	05 60 56 00 00       	add    $0x5660,%eax
  1009a5:	8b 45 10             	mov    0x10(%ebp),%eax
  1009a8:	8b 55 08             	mov    0x8(%ebp),%edx
  1009ab:	66 89 02             	mov    %ax,(%edx)
  1009ae:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009b1:	c1 e0 03             	shl    $0x3,%eax
  1009b4:	8b 55 08             	mov    0x8(%ebp),%edx
  1009b7:	66 89 42 02          	mov    %ax,0x2(%edx)
  1009bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1009be:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1009c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009c5:	8a 50 05             	mov    0x5(%eax),%dl
  1009c8:	83 ca 0f             	or     $0xf,%edx
  1009cb:	88 50 05             	mov    %dl,0x5(%eax)
  1009ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1009d1:	8a 50 05             	mov    0x5(%eax),%dl
  1009d4:	83 e2 ef             	and    $0xffffffef,%edx
  1009d7:	88 50 05             	mov    %dl,0x5(%eax)
  1009da:	8b 45 14             	mov    0x14(%ebp),%eax
  1009dd:	88 c2                	mov    %al,%dl
  1009df:	83 e2 03             	and    $0x3,%edx
  1009e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009e5:	83 e2 03             	and    $0x3,%edx
  1009e8:	88 d1                	mov    %dl,%cl
  1009ea:	c1 e1 05             	shl    $0x5,%ecx
  1009ed:	8a 50 05             	mov    0x5(%eax),%dl
  1009f0:	83 e2 9f             	and    $0xffffff9f,%edx
  1009f3:	09 ca                	or     %ecx,%edx
  1009f5:	88 50 05             	mov    %dl,0x5(%eax)
  1009f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1009fb:	8a 50 05             	mov    0x5(%eax),%dl
  1009fe:	83 ca 80             	or     $0xffffff80,%edx
  100a01:	88 50 05             	mov    %dl,0x5(%eax)
  100a04:	8b 45 10             	mov    0x10(%ebp),%eax
  100a07:	c1 e8 10             	shr    $0x10,%eax
  100a0a:	8b 55 08             	mov    0x8(%ebp),%edx
  100a0d:	66 89 42 06          	mov    %ax,0x6(%edx)
  100a11:	90                   	nop
  100a12:	5d                   	pop    %ebp
  100a13:	c3                   	ret    

00100a14 <initIdt>:
  100a14:	55                   	push   %ebp
  100a15:	89 e5                	mov    %esp,%ebp
  100a17:	53                   	push   %ebx
  100a18:	83 ec 10             	sub    $0x10,%esp
  100a1b:	e8 15 fe ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100a20:	81 c3 e0 55 00 00    	add    $0x55e0,%ebx
  100a26:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100a2d:	eb 2b                	jmp    100a5a <initIdt+0x46>
  100a2f:	c7 c0 18 43 10 00    	mov    $0x104318,%eax
  100a35:	89 c2                	mov    %eax,%edx
  100a37:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a3a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100a41:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a47:	01 c8                	add    %ecx,%eax
  100a49:	6a 00                	push   $0x0
  100a4b:	52                   	push   %edx
  100a4c:	6a 01                	push   $0x1
  100a4e:	50                   	push   %eax
  100a4f:	e8 44 ff ff ff       	call   100998 <setTrap>
  100a54:	83 c4 10             	add    $0x10,%esp
  100a57:	ff 45 f8             	incl   -0x8(%ebp)
  100a5a:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
  100a61:	7e cc                	jle    100a2f <initIdt+0x1b>
  100a63:	c7 c0 22 43 10 00    	mov    $0x104322,%eax
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a71:	8d 40 40             	lea    0x40(%eax),%eax
  100a74:	6a 00                	push   $0x0
  100a76:	52                   	push   %edx
  100a77:	6a 01                	push   $0x1
  100a79:	50                   	push   %eax
  100a7a:	e8 19 ff ff ff       	call   100998 <setTrap>
  100a7f:	83 c4 10             	add    $0x10,%esp
  100a82:	c7 c0 26 43 10 00    	mov    $0x104326,%eax
  100a88:	89 c2                	mov    %eax,%edx
  100a8a:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a90:	8d 40 50             	lea    0x50(%eax),%eax
  100a93:	6a 00                	push   $0x0
  100a95:	52                   	push   %edx
  100a96:	6a 01                	push   $0x1
  100a98:	50                   	push   %eax
  100a99:	e8 fa fe ff ff       	call   100998 <setTrap>
  100a9e:	83 c4 10             	add    $0x10,%esp
  100aa1:	c7 c0 2a 43 10 00    	mov    $0x10432a,%eax
  100aa7:	89 c2                	mov    %eax,%edx
  100aa9:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100aaf:	8d 40 58             	lea    0x58(%eax),%eax
  100ab2:	6a 00                	push   $0x0
  100ab4:	52                   	push   %edx
  100ab5:	6a 01                	push   $0x1
  100ab7:	50                   	push   %eax
  100ab8:	e8 db fe ff ff       	call   100998 <setTrap>
  100abd:	83 c4 10             	add    $0x10,%esp
  100ac0:	c7 c0 2e 43 10 00    	mov    $0x10432e,%eax
  100ac6:	89 c2                	mov    %eax,%edx
  100ac8:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100ace:	8d 40 60             	lea    0x60(%eax),%eax
  100ad1:	6a 00                	push   $0x0
  100ad3:	52                   	push   %edx
  100ad4:	6a 01                	push   $0x1
  100ad6:	50                   	push   %eax
  100ad7:	e8 bc fe ff ff       	call   100998 <setTrap>
  100adc:	83 c4 10             	add    $0x10,%esp
  100adf:	c7 c0 32 43 10 00    	mov    $0x104332,%eax
  100ae5:	89 c2                	mov    %eax,%edx
  100ae7:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100aed:	8d 40 68             	lea    0x68(%eax),%eax
  100af0:	6a 00                	push   $0x0
  100af2:	52                   	push   %edx
  100af3:	6a 01                	push   $0x1
  100af5:	50                   	push   %eax
  100af6:	e8 9d fe ff ff       	call   100998 <setTrap>
  100afb:	83 c4 10             	add    $0x10,%esp
  100afe:	c7 c0 36 43 10 00    	mov    $0x104336,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b0c:	8d 40 70             	lea    0x70(%eax),%eax
  100b0f:	6a 00                	push   $0x0
  100b11:	52                   	push   %edx
  100b12:	6a 01                	push   $0x1
  100b14:	50                   	push   %eax
  100b15:	e8 7e fe ff ff       	call   100998 <setTrap>
  100b1a:	83 c4 10             	add    $0x10,%esp
  100b1d:	c7 c0 3a 43 10 00    	mov    $0x10433a,%eax
  100b23:	89 c2                	mov    %eax,%edx
  100b25:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b2b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  100b31:	6a 00                	push   $0x0
  100b33:	52                   	push   %edx
  100b34:	6a 01                	push   $0x1
  100b36:	50                   	push   %eax
  100b37:	e8 5c fe ff ff       	call   100998 <setTrap>
  100b3c:	83 c4 10             	add    $0x10,%esp
  100b3f:	c7 c0 3e 43 10 00    	mov    $0x10433e,%eax
  100b45:	89 c2                	mov    %eax,%edx
  100b47:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b4d:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  100b53:	6a 00                	push   $0x0
  100b55:	52                   	push   %edx
  100b56:	6a 01                	push   $0x1
  100b58:	50                   	push   %eax
  100b59:	e8 3a fe ff ff       	call   100998 <setTrap>
  100b5e:	83 c4 10             	add    $0x10,%esp
  100b61:	c7 c0 42 43 10 00    	mov    $0x104342,%eax
  100b67:	89 c2                	mov    %eax,%edx
  100b69:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b6f:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  100b75:	6a 00                	push   $0x0
  100b77:	52                   	push   %edx
  100b78:	6a 01                	push   $0x1
  100b7a:	50                   	push   %eax
  100b7b:	e8 99 fd ff ff       	call   100919 <setIntr>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	c7 c0 48 43 10 00    	mov    $0x104348,%eax
  100b89:	89 c2                	mov    %eax,%edx
  100b8b:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b91:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  100b97:	6a 00                	push   $0x0
  100b99:	52                   	push   %edx
  100b9a:	6a 01                	push   $0x1
  100b9c:	50                   	push   %eax
  100b9d:	e8 77 fd ff ff       	call   100919 <setIntr>
  100ba2:	83 c4 10             	add    $0x10,%esp
  100ba5:	c7 c0 4e 43 10 00    	mov    $0x10434e,%eax
  100bab:	89 c2                	mov    %eax,%edx
  100bad:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100bb3:	8d 80 00 04 00 00    	lea    0x400(%eax),%eax
  100bb9:	6a 03                	push   $0x3
  100bbb:	52                   	push   %edx
  100bbc:	6a 01                	push   $0x1
  100bbe:	50                   	push   %eax
  100bbf:	e8 55 fd ff ff       	call   100919 <setIntr>
  100bc4:	83 c4 10             	add    $0x10,%esp
  100bc7:	68 00 08 00 00       	push   $0x800
  100bcc:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100bd2:	50                   	push   %eax
  100bd3:	e8 06 fd ff ff       	call   1008de <saveIdt>
  100bd8:	83 c4 08             	add    $0x8,%esp
  100bdb:	90                   	nop
  100bdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100bdf:	c9                   	leave  
  100be0:	c3                   	ret    

00100be1 <enableInterrupt>:
  100be1:	55                   	push   %ebp
  100be2:	89 e5                	mov    %esp,%ebp
  100be4:	e8 5c f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100be9:	05 17 54 00 00       	add    $0x5417,%eax
  100bee:	fb                   	sti    
  100bef:	90                   	nop
  100bf0:	5d                   	pop    %ebp
  100bf1:	c3                   	ret    

00100bf2 <disableInterrupt>:
  100bf2:	55                   	push   %ebp
  100bf3:	89 e5                	mov    %esp,%ebp
  100bf5:	e8 4b f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100bfa:	05 06 54 00 00       	add    $0x5406,%eax
  100bff:	fa                   	cli    
  100c00:	90                   	nop
  100c01:	5d                   	pop    %ebp
  100c02:	c3                   	ret    

00100c03 <irqHandle>:
  100c03:	55                   	push   %ebp
  100c04:	89 e5                	mov    %esp,%ebp
  100c06:	56                   	push   %esi
  100c07:	53                   	push   %ebx
  100c08:	83 ec 10             	sub    $0x10,%esp
  100c0b:	e8 25 fc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100c10:	81 c3 f0 53 00 00    	add    $0x53f0,%ebx
  100c16:	b8 10 00 00 00       	mov    $0x10,%eax
  100c1b:	8e d8                	mov    %eax,%ds
  100c1d:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c23:	8b 10                	mov    (%eax),%edx
  100c25:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100c2b:	89 d0                	mov    %edx,%eax
  100c2d:	01 c0                	add    %eax,%eax
  100c2f:	01 d0                	add    %edx,%eax
  100c31:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c38:	01 d0                	add    %edx,%eax
  100c3a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c41:	01 d0                	add    %edx,%eax
  100c43:	89 c2                	mov    %eax,%edx
  100c45:	c1 e2 04             	shl    $0x4,%edx
  100c48:	01 d0                	add    %edx,%eax
  100c4a:	c1 e0 02             	shl    $0x2,%eax
  100c4d:	01 c8                	add    %ecx,%eax
  100c4f:	05 4c 40 00 00       	add    $0x404c,%eax
  100c54:	8b 00                	mov    (%eax),%eax
  100c56:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c59:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c5f:	8b 10                	mov    (%eax),%edx
  100c61:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c67:	8b 08                	mov    (%eax),%ecx
  100c69:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100c6f:	89 d0                	mov    %edx,%eax
  100c71:	01 c0                	add    %eax,%eax
  100c73:	01 d0                	add    %edx,%eax
  100c75:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c7c:	01 d0                	add    %edx,%eax
  100c7e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c85:	01 d0                	add    %edx,%eax
  100c87:	89 c2                	mov    %eax,%edx
  100c89:	c1 e2 04             	shl    $0x4,%edx
  100c8c:	01 d0                	add    %edx,%eax
  100c8e:	c1 e0 02             	shl    $0x2,%eax
  100c91:	01 f0                	add    %esi,%eax
  100c93:	05 4c 40 00 00       	add    $0x404c,%eax
  100c98:	8b 10                	mov    (%eax),%edx
  100c9a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100ca0:	89 c8                	mov    %ecx,%eax
  100ca2:	01 c0                	add    %eax,%eax
  100ca4:	01 c8                	add    %ecx,%eax
  100ca6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cad:	01 c8                	add    %ecx,%eax
  100caf:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cb6:	01 c8                	add    %ecx,%eax
  100cb8:	89 c1                	mov    %eax,%ecx
  100cba:	c1 e1 04             	shl    $0x4,%ecx
  100cbd:	01 c8                	add    %ecx,%eax
  100cbf:	c1 e0 02             	shl    $0x2,%eax
  100cc2:	01 f0                	add    %esi,%eax
  100cc4:	05 50 40 00 00       	add    $0x4050,%eax
  100cc9:	89 10                	mov    %edx,(%eax)
  100ccb:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100cd1:	8b 08                	mov    (%eax),%ecx
  100cd3:	8b 55 08             	mov    0x8(%ebp),%edx
  100cd6:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100cdc:	89 c8                	mov    %ecx,%eax
  100cde:	01 c0                	add    %eax,%eax
  100ce0:	01 c8                	add    %ecx,%eax
  100ce2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100ce9:	01 c8                	add    %ecx,%eax
  100ceb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cf2:	01 c8                	add    %ecx,%eax
  100cf4:	89 c1                	mov    %eax,%ecx
  100cf6:	c1 e1 04             	shl    $0x4,%ecx
  100cf9:	01 c8                	add    %ecx,%eax
  100cfb:	c1 e0 02             	shl    $0x2,%eax
  100cfe:	01 f0                	add    %esi,%eax
  100d00:	05 4c 40 00 00       	add    $0x404c,%eax
  100d05:	89 10                	mov    %edx,(%eax)
  100d07:	8b 45 08             	mov    0x8(%ebp),%eax
  100d0a:	8b 40 30             	mov    0x30(%eax),%eax
  100d0d:	83 f8 21             	cmp    $0x21,%eax
  100d10:	74 3f                	je     100d51 <irqHandle+0x14e>
  100d12:	83 f8 21             	cmp    $0x21,%eax
  100d15:	77 0c                	ja     100d23 <irqHandle+0x120>
  100d17:	83 f8 0d             	cmp    $0xd,%eax
  100d1a:	74 15                	je     100d31 <irqHandle+0x12e>
  100d1c:	83 f8 20             	cmp    $0x20,%eax
  100d1f:	74 20                	je     100d41 <irqHandle+0x13e>
  100d21:	eb 4e                	jmp    100d71 <irqHandle+0x16e>
  100d23:	3d 80 00 00 00       	cmp    $0x80,%eax
  100d28:	74 37                	je     100d61 <irqHandle+0x15e>
  100d2a:	83 f8 ff             	cmp    $0xffffffff,%eax
  100d2d:	74 58                	je     100d87 <irqHandle+0x184>
  100d2f:	eb 40                	jmp    100d71 <irqHandle+0x16e>
  100d31:	83 ec 0c             	sub    $0xc,%esp
  100d34:	ff 75 08             	pushl  0x8(%ebp)
  100d37:	e8 fd 1b 00 00       	call   102939 <GProtectFaultHandle>
  100d3c:	83 c4 10             	add    $0x10,%esp
  100d3f:	eb 47                	jmp    100d88 <irqHandle+0x185>
  100d41:	83 ec 0c             	sub    $0xc,%esp
  100d44:	ff 75 08             	pushl  0x8(%ebp)
  100d47:	e8 32 01 00 00       	call   100e7e <timerHandle>
  100d4c:	83 c4 10             	add    $0x10,%esp
  100d4f:	eb 37                	jmp    100d88 <irqHandle+0x185>
  100d51:	83 ec 0c             	sub    $0xc,%esp
  100d54:	ff 75 08             	pushl  0x8(%ebp)
  100d57:	e8 8b 06 00 00       	call   1013e7 <keyboardHandle>
  100d5c:	83 c4 10             	add    $0x10,%esp
  100d5f:	eb 27                	jmp    100d88 <irqHandle+0x185>
  100d61:	83 ec 0c             	sub    $0xc,%esp
  100d64:	ff 75 08             	pushl  0x8(%ebp)
  100d67:	e8 61 00 00 00       	call   100dcd <syscallHandle>
  100d6c:	83 c4 10             	add    $0x10,%esp
  100d6f:	eb 17                	jmp    100d88 <irqHandle+0x185>
  100d71:	83 ec 08             	sub    $0x8,%esp
  100d74:	6a 6a                	push   $0x6a
  100d76:	8d 83 78 e3 ff ff    	lea    -0x1c88(%ebx),%eax
  100d7c:	50                   	push   %eax
  100d7d:	e8 c4 32 00 00       	call   104046 <abort>
  100d82:	83 c4 10             	add    $0x10,%esp
  100d85:	eb 01                	jmp    100d88 <irqHandle+0x185>
  100d87:	90                   	nop
  100d88:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100d8e:	8b 10                	mov    (%eax),%edx
  100d90:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100d96:	89 d0                	mov    %edx,%eax
  100d98:	01 c0                	add    %eax,%eax
  100d9a:	01 d0                	add    %edx,%eax
  100d9c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100da3:	01 d0                	add    %edx,%eax
  100da5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100dac:	01 d0                	add    %edx,%eax
  100dae:	89 c2                	mov    %eax,%edx
  100db0:	c1 e2 04             	shl    $0x4,%edx
  100db3:	01 d0                	add    %edx,%eax
  100db5:	c1 e0 02             	shl    $0x2,%eax
  100db8:	01 c8                	add    %ecx,%eax
  100dba:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  100dc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dc3:	89 02                	mov    %eax,(%edx)
  100dc5:	90                   	nop
  100dc6:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100dc9:	5b                   	pop    %ebx
  100dca:	5e                   	pop    %esi
  100dcb:	5d                   	pop    %ebp
  100dcc:	c3                   	ret    

00100dcd <syscallHandle>:
  100dcd:	55                   	push   %ebp
  100dce:	89 e5                	mov    %esp,%ebp
  100dd0:	83 ec 08             	sub    $0x8,%esp
  100dd3:	e8 6d f6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100dd8:	05 28 52 00 00       	add    $0x5228,%eax
  100ddd:	8b 55 08             	mov    0x8(%ebp),%edx
  100de0:	8b 52 2c             	mov    0x2c(%edx),%edx
  100de3:	83 fa 07             	cmp    $0x7,%edx
  100de6:	0f 87 8e 00 00 00    	ja     100e7a <.L23+0x10>
  100dec:	c1 e2 02             	shl    $0x2,%edx
  100def:	8b 94 02 8c e3 ff ff 	mov    -0x1c74(%edx,%eax,1),%edx
  100df6:	01 d0                	add    %edx,%eax
  100df8:	ff e0                	jmp    *%eax

00100dfa <.L15>:
  100dfa:	83 ec 0c             	sub    $0xc,%esp
  100dfd:	ff 75 08             	pushl  0x8(%ebp)
  100e00:	e8 cd 06 00 00       	call   1014d2 <syscallWrite>
  100e05:	83 c4 10             	add    $0x10,%esp
  100e08:	eb 71                	jmp    100e7b <.L23+0x11>

00100e0a <.L21>:
  100e0a:	83 ec 0c             	sub    $0xc,%esp
  100e0d:	ff 75 08             	pushl  0x8(%ebp)
  100e10:	e8 35 09 00 00       	call   10174a <syscallRead>
  100e15:	83 c4 10             	add    $0x10,%esp
  100e18:	eb 61                	jmp    100e7b <.L23+0x11>

00100e1a <.L17>:
  100e1a:	83 ec 0c             	sub    $0xc,%esp
  100e1d:	ff 75 08             	pushl  0x8(%ebp)
  100e20:	e8 d1 0c 00 00       	call   101af6 <syscallFork>
  100e25:	83 c4 10             	add    $0x10,%esp
  100e28:	eb 51                	jmp    100e7b <.L23+0x11>

00100e2a <.L18>:
  100e2a:	83 ec 0c             	sub    $0xc,%esp
  100e2d:	ff 75 08             	pushl  0x8(%ebp)
  100e30:	e8 36 18 00 00       	call   10266b <syscallExec>
  100e35:	83 c4 10             	add    $0x10,%esp
  100e38:	eb 41                	jmp    100e7b <.L23+0x11>

00100e3a <.L19>:
  100e3a:	83 ec 0c             	sub    $0xc,%esp
  100e3d:	ff 75 08             	pushl  0x8(%ebp)
  100e40:	e8 02 19 00 00       	call   102747 <syscallSleep>
  100e45:	83 c4 10             	add    $0x10,%esp
  100e48:	eb 31                	jmp    100e7b <.L23+0x11>

00100e4a <.L20>:
  100e4a:	83 ec 0c             	sub    $0xc,%esp
  100e4d:	ff 75 08             	pushl  0x8(%ebp)
  100e50:	e8 94 19 00 00       	call   1027e9 <syscallExit>
  100e55:	83 c4 10             	add    $0x10,%esp
  100e58:	eb 21                	jmp    100e7b <.L23+0x11>

00100e5a <.L22>:
  100e5a:	83 ec 0c             	sub    $0xc,%esp
  100e5d:	ff 75 08             	pushl  0x8(%ebp)
  100e60:	e8 d3 19 00 00       	call   102838 <syscallSem>
  100e65:	83 c4 10             	add    $0x10,%esp
  100e68:	eb 11                	jmp    100e7b <.L23+0x11>

00100e6a <.L23>:
  100e6a:	83 ec 0c             	sub    $0xc,%esp
  100e6d:	ff 75 08             	pushl  0x8(%ebp)
  100e70:	e8 71 1a 00 00       	call   1028e6 <syscallGetPid>
  100e75:	83 c4 10             	add    $0x10,%esp
  100e78:	eb 01                	jmp    100e7b <.L23+0x11>
  100e7a:	90                   	nop
  100e7b:	90                   	nop
  100e7c:	c9                   	leave  
  100e7d:	c3                   	ret    

00100e7e <timerHandle>:
  100e7e:	55                   	push   %ebp
  100e7f:	89 e5                	mov    %esp,%ebp
  100e81:	56                   	push   %esi
  100e82:	53                   	push   %ebx
  100e83:	83 ec 10             	sub    $0x10,%esp
  100e86:	e8 aa f9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100e8b:	81 c3 75 51 00 00    	add    $0x5175,%ebx
  100e91:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100e97:	8b 00                	mov    (%eax),%eax
  100e99:	40                   	inc    %eax
  100e9a:	b9 09 00 00 00       	mov    $0x9,%ecx
  100e9f:	99                   	cltd   
  100ea0:	f7 f9                	idiv   %ecx
  100ea2:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100ea5:	e9 27 01 00 00       	jmp    100fd1 <timerHandle+0x153>
  100eaa:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100eb0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb3:	89 d0                	mov    %edx,%eax
  100eb5:	01 c0                	add    %eax,%eax
  100eb7:	01 d0                	add    %edx,%eax
  100eb9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ec0:	01 d0                	add    %edx,%eax
  100ec2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ec9:	01 d0                	add    %edx,%eax
  100ecb:	89 c2                	mov    %eax,%edx
  100ecd:	c1 e2 04             	shl    $0x4,%edx
  100ed0:	01 d0                	add    %edx,%eax
  100ed2:	c1 e0 02             	shl    $0x2,%eax
  100ed5:	01 c8                	add    %ecx,%eax
  100ed7:	05 54 40 00 00       	add    $0x4054,%eax
  100edc:	8b 00                	mov    (%eax),%eax
  100ede:	83 f8 02             	cmp    $0x2,%eax
  100ee1:	0f 85 db 00 00 00    	jne    100fc2 <timerHandle+0x144>
  100ee7:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100eed:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ef0:	89 d0                	mov    %edx,%eax
  100ef2:	01 c0                	add    %eax,%eax
  100ef4:	01 d0                	add    %edx,%eax
  100ef6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100efd:	01 d0                	add    %edx,%eax
  100eff:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f06:	01 d0                	add    %edx,%eax
  100f08:	89 c2                	mov    %eax,%edx
  100f0a:	c1 e2 04             	shl    $0x4,%edx
  100f0d:	01 d0                	add    %edx,%eax
  100f0f:	c1 e0 02             	shl    $0x2,%eax
  100f12:	01 c8                	add    %ecx,%eax
  100f14:	05 5c 40 00 00       	add    $0x405c,%eax
  100f19:	8b 00                	mov    (%eax),%eax
  100f1b:	8d 48 ff             	lea    -0x1(%eax),%ecx
  100f1e:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100f24:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f27:	89 d0                	mov    %edx,%eax
  100f29:	01 c0                	add    %eax,%eax
  100f2b:	01 d0                	add    %edx,%eax
  100f2d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f34:	01 d0                	add    %edx,%eax
  100f36:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f3d:	01 d0                	add    %edx,%eax
  100f3f:	89 c2                	mov    %eax,%edx
  100f41:	c1 e2 04             	shl    $0x4,%edx
  100f44:	01 d0                	add    %edx,%eax
  100f46:	c1 e0 02             	shl    $0x2,%eax
  100f49:	01 f0                	add    %esi,%eax
  100f4b:	05 5c 40 00 00       	add    $0x405c,%eax
  100f50:	89 08                	mov    %ecx,(%eax)
  100f52:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100f58:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f5b:	89 d0                	mov    %edx,%eax
  100f5d:	01 c0                	add    %eax,%eax
  100f5f:	01 d0                	add    %edx,%eax
  100f61:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f68:	01 d0                	add    %edx,%eax
  100f6a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f71:	01 d0                	add    %edx,%eax
  100f73:	89 c2                	mov    %eax,%edx
  100f75:	c1 e2 04             	shl    $0x4,%edx
  100f78:	01 d0                	add    %edx,%eax
  100f7a:	c1 e0 02             	shl    $0x2,%eax
  100f7d:	01 c8                	add    %ecx,%eax
  100f7f:	05 5c 40 00 00       	add    $0x405c,%eax
  100f84:	8b 00                	mov    (%eax),%eax
  100f86:	85 c0                	test   %eax,%eax
  100f88:	75 38                	jne    100fc2 <timerHandle+0x144>
  100f8a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100f90:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f93:	89 d0                	mov    %edx,%eax
  100f95:	01 c0                	add    %eax,%eax
  100f97:	01 d0                	add    %edx,%eax
  100f99:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fa0:	01 d0                	add    %edx,%eax
  100fa2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fa9:	01 d0                	add    %edx,%eax
  100fab:	89 c2                	mov    %eax,%edx
  100fad:	c1 e2 04             	shl    $0x4,%edx
  100fb0:	01 d0                	add    %edx,%eax
  100fb2:	c1 e0 02             	shl    $0x2,%eax
  100fb5:	01 c8                	add    %ecx,%eax
  100fb7:	05 54 40 00 00       	add    $0x4054,%eax
  100fbc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  100fc2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fc5:	40                   	inc    %eax
  100fc6:	b9 09 00 00 00       	mov    $0x9,%ecx
  100fcb:	99                   	cltd   
  100fcc:	f7 f9                	idiv   %ecx
  100fce:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100fd1:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100fd7:	8b 00                	mov    (%eax),%eax
  100fd9:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  100fdc:	0f 85 c8 fe ff ff    	jne    100eaa <timerHandle+0x2c>
  100fe2:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100fe8:	8b 10                	mov    (%eax),%edx
  100fea:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100ff0:	89 d0                	mov    %edx,%eax
  100ff2:	01 c0                	add    %eax,%eax
  100ff4:	01 d0                	add    %edx,%eax
  100ff6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ffd:	01 d0                	add    %edx,%eax
  100fff:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101006:	01 d0                	add    %edx,%eax
  101008:	89 c2                	mov    %eax,%edx
  10100a:	c1 e2 04             	shl    $0x4,%edx
  10100d:	01 d0                	add    %edx,%eax
  10100f:	c1 e0 02             	shl    $0x2,%eax
  101012:	01 c8                	add    %ecx,%eax
  101014:	05 54 40 00 00       	add    $0x4054,%eax
  101019:	8b 00                	mov    (%eax),%eax
  10101b:	83 f8 01             	cmp    $0x1,%eax
  10101e:	0f 85 b0 00 00 00    	jne    1010d4 <timerHandle+0x256>
  101024:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10102a:	8b 10                	mov    (%eax),%edx
  10102c:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101032:	89 d0                	mov    %edx,%eax
  101034:	01 c0                	add    %eax,%eax
  101036:	01 d0                	add    %edx,%eax
  101038:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10103f:	01 d0                	add    %edx,%eax
  101041:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101048:	01 d0                	add    %edx,%eax
  10104a:	89 c2                	mov    %eax,%edx
  10104c:	c1 e2 04             	shl    $0x4,%edx
  10104f:	01 d0                	add    %edx,%eax
  101051:	c1 e0 02             	shl    $0x2,%eax
  101054:	01 c8                	add    %ecx,%eax
  101056:	05 58 40 00 00       	add    $0x4058,%eax
  10105b:	8b 00                	mov    (%eax),%eax
  10105d:	83 f8 10             	cmp    $0x10,%eax
  101060:	74 72                	je     1010d4 <timerHandle+0x256>
  101062:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101068:	8b 10                	mov    (%eax),%edx
  10106a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101070:	89 d0                	mov    %edx,%eax
  101072:	01 c0                	add    %eax,%eax
  101074:	01 d0                	add    %edx,%eax
  101076:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  10107d:	01 f0                	add    %esi,%eax
  10107f:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  101086:	01 f0                	add    %esi,%eax
  101088:	89 c6                	mov    %eax,%esi
  10108a:	c1 e6 04             	shl    $0x4,%esi
  10108d:	01 f0                	add    %esi,%eax
  10108f:	c1 e0 02             	shl    $0x2,%eax
  101092:	01 c8                	add    %ecx,%eax
  101094:	05 58 40 00 00       	add    $0x4058,%eax
  101099:	8b 00                	mov    (%eax),%eax
  10109b:	8d 48 01             	lea    0x1(%eax),%ecx
  10109e:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1010a4:	89 d0                	mov    %edx,%eax
  1010a6:	01 c0                	add    %eax,%eax
  1010a8:	01 d0                	add    %edx,%eax
  1010aa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010b1:	01 d0                	add    %edx,%eax
  1010b3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ba:	01 d0                	add    %edx,%eax
  1010bc:	89 c2                	mov    %eax,%edx
  1010be:	c1 e2 04             	shl    $0x4,%edx
  1010c1:	01 d0                	add    %edx,%eax
  1010c3:	c1 e0 02             	shl    $0x2,%eax
  1010c6:	01 d8                	add    %ebx,%eax
  1010c8:	05 58 40 00 00       	add    $0x4058,%eax
  1010cd:	89 08                	mov    %ecx,(%eax)
  1010cf:	e9 0c 03 00 00       	jmp    1013e0 <timerHandle+0x562>
  1010d4:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1010da:	8b 10                	mov    (%eax),%edx
  1010dc:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1010e2:	89 d0                	mov    %edx,%eax
  1010e4:	01 c0                	add    %eax,%eax
  1010e6:	01 d0                	add    %edx,%eax
  1010e8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ef:	01 d0                	add    %edx,%eax
  1010f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010f8:	01 d0                	add    %edx,%eax
  1010fa:	89 c2                	mov    %eax,%edx
  1010fc:	c1 e2 04             	shl    $0x4,%edx
  1010ff:	01 d0                	add    %edx,%eax
  101101:	c1 e0 02             	shl    $0x2,%eax
  101104:	01 c8                	add    %ecx,%eax
  101106:	05 54 40 00 00       	add    $0x4054,%eax
  10110b:	8b 00                	mov    (%eax),%eax
  10110d:	83 f8 01             	cmp    $0x1,%eax
  101110:	75 7a                	jne    10118c <timerHandle+0x30e>
  101112:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101118:	8b 10                	mov    (%eax),%edx
  10111a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101120:	89 d0                	mov    %edx,%eax
  101122:	01 c0                	add    %eax,%eax
  101124:	01 d0                	add    %edx,%eax
  101126:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10112d:	01 d0                	add    %edx,%eax
  10112f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101136:	01 d0                	add    %edx,%eax
  101138:	89 c2                	mov    %eax,%edx
  10113a:	c1 e2 04             	shl    $0x4,%edx
  10113d:	01 d0                	add    %edx,%eax
  10113f:	c1 e0 02             	shl    $0x2,%eax
  101142:	01 c8                	add    %ecx,%eax
  101144:	05 54 40 00 00       	add    $0x4054,%eax
  101149:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10114f:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101155:	8b 10                	mov    (%eax),%edx
  101157:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10115d:	89 d0                	mov    %edx,%eax
  10115f:	01 c0                	add    %eax,%eax
  101161:	01 d0                	add    %edx,%eax
  101163:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10116a:	01 d0                	add    %edx,%eax
  10116c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101173:	01 d0                	add    %edx,%eax
  101175:	89 c2                	mov    %eax,%edx
  101177:	c1 e2 04             	shl    $0x4,%edx
  10117a:	01 d0                	add    %edx,%eax
  10117c:	c1 e0 02             	shl    $0x2,%eax
  10117f:	01 c8                	add    %ecx,%eax
  101181:	05 58 40 00 00       	add    $0x4058,%eax
  101186:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10118c:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101192:	8b 00                	mov    (%eax),%eax
  101194:	40                   	inc    %eax
  101195:	b9 09 00 00 00       	mov    $0x9,%ecx
  10119a:	99                   	cltd   
  10119b:	f7 f9                	idiv   %ecx
  10119d:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1011a0:	eb 4d                	jmp    1011ef <timerHandle+0x371>
  1011a2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1011a6:	74 38                	je     1011e0 <timerHandle+0x362>
  1011a8:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1011ae:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1011b1:	89 d0                	mov    %edx,%eax
  1011b3:	01 c0                	add    %eax,%eax
  1011b5:	01 d0                	add    %edx,%eax
  1011b7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011be:	01 d0                	add    %edx,%eax
  1011c0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011c7:	01 d0                	add    %edx,%eax
  1011c9:	89 c2                	mov    %eax,%edx
  1011cb:	c1 e2 04             	shl    $0x4,%edx
  1011ce:	01 d0                	add    %edx,%eax
  1011d0:	c1 e0 02             	shl    $0x2,%eax
  1011d3:	01 c8                	add    %ecx,%eax
  1011d5:	05 54 40 00 00       	add    $0x4054,%eax
  1011da:	8b 00                	mov    (%eax),%eax
  1011dc:	85 c0                	test   %eax,%eax
  1011de:	74 1e                	je     1011fe <timerHandle+0x380>
  1011e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1011e3:	40                   	inc    %eax
  1011e4:	b9 09 00 00 00       	mov    $0x9,%ecx
  1011e9:	99                   	cltd   
  1011ea:	f7 f9                	idiv   %ecx
  1011ec:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1011ef:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1011f5:	8b 00                	mov    (%eax),%eax
  1011f7:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1011fa:	75 a6                	jne    1011a2 <timerHandle+0x324>
  1011fc:	eb 01                	jmp    1011ff <timerHandle+0x381>
  1011fe:	90                   	nop
  1011ff:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101205:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101208:	89 d0                	mov    %edx,%eax
  10120a:	01 c0                	add    %eax,%eax
  10120c:	01 d0                	add    %edx,%eax
  10120e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101215:	01 d0                	add    %edx,%eax
  101217:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10121e:	01 d0                	add    %edx,%eax
  101220:	89 c2                	mov    %eax,%edx
  101222:	c1 e2 04             	shl    $0x4,%edx
  101225:	01 d0                	add    %edx,%eax
  101227:	c1 e0 02             	shl    $0x2,%eax
  10122a:	01 c8                	add    %ecx,%eax
  10122c:	05 54 40 00 00       	add    $0x4054,%eax
  101231:	8b 00                	mov    (%eax),%eax
  101233:	85 c0                	test   %eax,%eax
  101235:	74 07                	je     10123e <timerHandle+0x3c0>
  101237:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10123e:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101244:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101247:	89 10                	mov    %edx,(%eax)
  101249:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10124f:	8b 00                	mov    (%eax),%eax
  101251:	83 c0 30             	add    $0x30,%eax
  101254:	0f be c0             	movsbl %al,%eax
  101257:	83 ec 0c             	sub    $0xc,%esp
  10125a:	50                   	push   %eax
  10125b:	e8 04 29 00 00       	call   103b64 <putChar>
  101260:	83 c4 10             	add    $0x10,%esp
  101263:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101269:	8b 10                	mov    (%eax),%edx
  10126b:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101271:	89 d0                	mov    %edx,%eax
  101273:	01 c0                	add    %eax,%eax
  101275:	01 d0                	add    %edx,%eax
  101277:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10127e:	01 d0                	add    %edx,%eax
  101280:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101287:	01 d0                	add    %edx,%eax
  101289:	89 c2                	mov    %eax,%edx
  10128b:	c1 e2 04             	shl    $0x4,%edx
  10128e:	01 d0                	add    %edx,%eax
  101290:	c1 e0 02             	shl    $0x2,%eax
  101293:	01 c8                	add    %ecx,%eax
  101295:	05 54 40 00 00       	add    $0x4054,%eax
  10129a:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  1012a0:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1012a6:	8b 10                	mov    (%eax),%edx
  1012a8:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1012ae:	89 d0                	mov    %edx,%eax
  1012b0:	01 c0                	add    %eax,%eax
  1012b2:	01 d0                	add    %edx,%eax
  1012b4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012bb:	01 d0                	add    %edx,%eax
  1012bd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012c4:	01 d0                	add    %edx,%eax
  1012c6:	89 c2                	mov    %eax,%edx
  1012c8:	c1 e2 04             	shl    $0x4,%edx
  1012cb:	01 d0                	add    %edx,%eax
  1012cd:	c1 e0 02             	shl    $0x2,%eax
  1012d0:	01 c8                	add    %ecx,%eax
  1012d2:	05 58 40 00 00       	add    $0x4058,%eax
  1012d7:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  1012dd:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1012e3:	8b 10                	mov    (%eax),%edx
  1012e5:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1012eb:	89 d0                	mov    %edx,%eax
  1012ed:	01 c0                	add    %eax,%eax
  1012ef:	01 d0                	add    %edx,%eax
  1012f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012f8:	01 d0                	add    %edx,%eax
  1012fa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101301:	01 d0                	add    %edx,%eax
  101303:	89 c2                	mov    %eax,%edx
  101305:	c1 e2 04             	shl    $0x4,%edx
  101308:	01 d0                	add    %edx,%eax
  10130a:	c1 e0 02             	shl    $0x2,%eax
  10130d:	01 c8                	add    %ecx,%eax
  10130f:	05 4c 40 00 00       	add    $0x404c,%eax
  101314:	8b 00                	mov    (%eax),%eax
  101316:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101319:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10131f:	8b 10                	mov    (%eax),%edx
  101321:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101327:	8b 08                	mov    (%eax),%ecx
  101329:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10132f:	89 d0                	mov    %edx,%eax
  101331:	01 c0                	add    %eax,%eax
  101333:	01 d0                	add    %edx,%eax
  101335:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10133c:	01 d0                	add    %edx,%eax
  10133e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101345:	01 d0                	add    %edx,%eax
  101347:	89 c2                	mov    %eax,%edx
  101349:	c1 e2 04             	shl    $0x4,%edx
  10134c:	01 d0                	add    %edx,%eax
  10134e:	c1 e0 02             	shl    $0x2,%eax
  101351:	01 f0                	add    %esi,%eax
  101353:	05 50 40 00 00       	add    $0x4050,%eax
  101358:	8b 10                	mov    (%eax),%edx
  10135a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101360:	89 c8                	mov    %ecx,%eax
  101362:	01 c0                	add    %eax,%eax
  101364:	01 c8                	add    %ecx,%eax
  101366:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10136d:	01 c8                	add    %ecx,%eax
  10136f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101376:	01 c8                	add    %ecx,%eax
  101378:	89 c1                	mov    %eax,%ecx
  10137a:	c1 e1 04             	shl    $0x4,%ecx
  10137d:	01 c8                	add    %ecx,%eax
  10137f:	c1 e0 02             	shl    $0x2,%eax
  101382:	01 f0                	add    %esi,%eax
  101384:	05 4c 40 00 00       	add    $0x404c,%eax
  101389:	89 10                	mov    %edx,(%eax)
  10138b:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101391:	8b 10                	mov    (%eax),%edx
  101393:	89 d0                	mov    %edx,%eax
  101395:	01 c0                	add    %eax,%eax
  101397:	01 d0                	add    %edx,%eax
  101399:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1013a0:	01 d0                	add    %edx,%eax
  1013a2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1013a9:	01 d0                	add    %edx,%eax
  1013ab:	89 c2                	mov    %eax,%edx
  1013ad:	c1 e2 04             	shl    $0x4,%edx
  1013b0:	01 d0                	add    %edx,%eax
  1013b2:	c1 e0 02             	shl    $0x2,%eax
  1013b5:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  1013bb:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1013c1:	01 d0                	add    %edx,%eax
  1013c3:	83 c0 0c             	add    $0xc,%eax
  1013c6:	89 c2                	mov    %eax,%edx
  1013c8:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1013ce:	89 50 04             	mov    %edx,0x4(%eax)
  1013d1:	8b 65 f0             	mov    -0x10(%ebp),%esp
  1013d4:	0f a9                	pop    %gs
  1013d6:	0f a1                	pop    %fs
  1013d8:	07                   	pop    %es
  1013d9:	1f                   	pop    %ds
  1013da:	61                   	popa   
  1013db:	83 c4 08             	add    $0x8,%esp
  1013de:	cf                   	iret   
  1013df:	90                   	nop
  1013e0:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1013e3:	5b                   	pop    %ebx
  1013e4:	5e                   	pop    %esi
  1013e5:	5d                   	pop    %ebp
  1013e6:	c3                   	ret    

001013e7 <keyboardHandle>:
  1013e7:	55                   	push   %ebp
  1013e8:	89 e5                	mov    %esp,%ebp
  1013ea:	53                   	push   %ebx
  1013eb:	83 ec 14             	sub    $0x14,%esp
  1013ee:	e8 42 f4 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1013f3:	81 c3 0d 4c 00 00    	add    $0x4c0d,%ebx
  1013f9:	e8 da 18 00 00       	call   102cd8 <getKeyCode>
  1013fe:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101401:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  101405:	75 12                	jne    101419 <keyboardHandle+0x32>
  101407:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10140d:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  101414:	e9 b4 00 00 00       	jmp    1014cd <keyboardHandle+0xe6>
  101419:	83 ec 0c             	sub    $0xc,%esp
  10141c:	ff 75 f4             	pushl  -0xc(%ebp)
  10141f:	e8 58 19 00 00       	call   102d7c <getChar>
  101424:	83 c4 10             	add    $0x10,%esp
  101427:	88 c1                	mov    %al,%cl
  101429:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  10142f:	8b 10                	mov    (%eax),%edx
  101431:	0f be c9             	movsbl %cl,%ecx
  101434:	c7 c0 60 7a 10 00    	mov    $0x107a60,%eax
  10143a:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  10143d:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  101443:	8b 00                	mov    (%eax),%eax
  101445:	40                   	inc    %eax
  101446:	25 ff 00 00 80       	and    $0x800000ff,%eax
  10144b:	85 c0                	test   %eax,%eax
  10144d:	79 07                	jns    101456 <keyboardHandle+0x6f>
  10144f:	48                   	dec    %eax
  101450:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  101455:	40                   	inc    %eax
  101456:	89 c2                	mov    %eax,%edx
  101458:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  10145e:	89 10                	mov    %edx,(%eax)
  101460:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101466:	8b 40 1c             	mov    0x1c(%eax),%eax
  101469:	2d 84 40 00 00       	sub    $0x4084,%eax
  10146e:	89 83 28 01 00 00    	mov    %eax,0x128(%ebx)
  101474:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10147a:	8b 40 1c             	mov    0x1c(%eax),%eax
  10147d:	8b 50 04             	mov    0x4(%eax),%edx
  101480:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101486:	89 50 1c             	mov    %edx,0x1c(%eax)
  101489:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10148f:	8b 40 1c             	mov    0x1c(%eax),%eax
  101492:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101498:	8d 52 18             	lea    0x18(%edx),%edx
  10149b:	89 10                	mov    %edx,(%eax)
  10149d:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  1014a3:	8b 80 60 40 00 00    	mov    0x4060(%eax),%eax
  1014a9:	85 c0                	test   %eax,%eax
  1014ab:	74 10                	je     1014bd <keyboardHandle+0xd6>
  1014ad:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  1014b3:	c7 80 54 40 00 00 00 	movl   $0x0,0x4054(%eax)
  1014ba:	00 00 00 
  1014bd:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  1014c3:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
  1014ca:	cd 20                	int    $0x20
  1014cc:	90                   	nop
  1014cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1014d0:	c9                   	leave  
  1014d1:	c3                   	ret    

001014d2 <syscallWrite>:
  1014d2:	55                   	push   %ebp
  1014d3:	89 e5                	mov    %esp,%ebp
  1014d5:	83 ec 08             	sub    $0x8,%esp
  1014d8:	e8 68 ef ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1014dd:	05 23 4b 00 00       	add    $0x4b23,%eax
  1014e2:	8b 55 08             	mov    0x8(%ebp),%edx
  1014e5:	8b 52 28             	mov    0x28(%edx),%edx
  1014e8:	85 d2                	test   %edx,%edx
  1014ea:	74 07                	je     1014f3 <syscallWrite+0x21>
  1014ec:	83 fa 03             	cmp    $0x3,%edx
  1014ef:	74 1f                	je     101510 <syscallWrite+0x3e>
  1014f1:	eb 3f                	jmp    101532 <syscallWrite+0x60>
  1014f3:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  1014f9:	8b 00                	mov    (%eax),%eax
  1014fb:	83 f8 01             	cmp    $0x1,%eax
  1014fe:	75 2e                	jne    10152e <syscallWrite+0x5c>
  101500:	83 ec 0c             	sub    $0xc,%esp
  101503:	ff 75 08             	pushl  0x8(%ebp)
  101506:	e8 2a 00 00 00       	call   101535 <syscallWriteStdOut>
  10150b:	83 c4 10             	add    $0x10,%esp
  10150e:	eb 1e                	jmp    10152e <syscallWrite+0x5c>
  101510:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101516:	8b 40 30             	mov    0x30(%eax),%eax
  101519:	83 f8 01             	cmp    $0x1,%eax
  10151c:	75 13                	jne    101531 <syscallWrite+0x5f>
  10151e:	83 ec 0c             	sub    $0xc,%esp
  101521:	ff 75 08             	pushl  0x8(%ebp)
  101524:	e8 9f 01 00 00       	call   1016c8 <syscallWriteShMem>
  101529:	83 c4 10             	add    $0x10,%esp
  10152c:	eb 03                	jmp    101531 <syscallWrite+0x5f>
  10152e:	90                   	nop
  10152f:	eb 01                	jmp    101532 <syscallWrite+0x60>
  101531:	90                   	nop
  101532:	90                   	nop
  101533:	c9                   	leave  
  101534:	c3                   	ret    

00101535 <syscallWriteStdOut>:
  101535:	55                   	push   %ebp
  101536:	89 e5                	mov    %esp,%ebp
  101538:	53                   	push   %ebx
  101539:	83 ec 24             	sub    $0x24,%esp
  10153c:	e8 f4 f2 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101541:	81 c3 bf 4a 00 00    	add    $0x4abf,%ebx
  101547:	8b 45 08             	mov    0x8(%ebp),%eax
  10154a:	8b 40 0c             	mov    0xc(%eax),%eax
  10154d:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101550:	8b 45 08             	mov    0x8(%ebp),%eax
  101553:	8b 40 24             	mov    0x24(%eax),%eax
  101556:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101559:	8b 45 08             	mov    0x8(%ebp),%eax
  10155c:	8b 40 20             	mov    0x20(%eax),%eax
  10155f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101562:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101569:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  101570:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  101574:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  10157a:	8e 45 e0             	mov    -0x20(%ebp),%es
  10157d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101584:	e9 10 01 00 00       	jmp    101699 <syscallWriteStdOut+0x164>
  101589:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10158c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10158f:	01 d0                	add    %edx,%eax
  101591:	26 8a 00             	mov    %es:(%eax),%al
  101594:	88 45 e7             	mov    %al,-0x19(%ebp)
  101597:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  10159b:	75 52                	jne    1015ef <syscallWriteStdOut+0xba>
  10159d:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015a3:	8b 00                	mov    (%eax),%eax
  1015a5:	8d 50 01             	lea    0x1(%eax),%edx
  1015a8:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015ae:	89 10                	mov    %edx,(%eax)
  1015b0:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  1015b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1015bc:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015c2:	8b 00                	mov    (%eax),%eax
  1015c4:	83 f8 19             	cmp    $0x19,%eax
  1015c7:	0f 85 c9 00 00 00    	jne    101696 <syscallWriteStdOut+0x161>
  1015cd:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015d3:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  1015d9:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  1015df:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1015e5:	e8 31 28 00 00       	call   103e1b <scrollScreen>
  1015ea:	e9 a7 00 00 00       	jmp    101696 <syscallWriteStdOut+0x161>
  1015ef:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  1015f4:	80 cc 0c             	or     $0xc,%ah
  1015f7:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  1015fb:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101601:	8b 10                	mov    (%eax),%edx
  101603:	89 d0                	mov    %edx,%eax
  101605:	c1 e0 02             	shl    $0x2,%eax
  101608:	01 d0                	add    %edx,%eax
  10160a:	c1 e0 04             	shl    $0x4,%eax
  10160d:	89 c2                	mov    %eax,%edx
  10160f:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101615:	8b 00                	mov    (%eax),%eax
  101617:	01 d0                	add    %edx,%eax
  101619:	01 c0                	add    %eax,%eax
  10161b:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10161e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101621:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  101627:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10162a:	66 89 02             	mov    %ax,(%edx)
  10162d:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101633:	8b 00                	mov    (%eax),%eax
  101635:	8d 50 01             	lea    0x1(%eax),%edx
  101638:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  10163e:	89 10                	mov    %edx,(%eax)
  101640:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101646:	8b 00                	mov    (%eax),%eax
  101648:	83 f8 50             	cmp    $0x50,%eax
  10164b:	75 49                	jne    101696 <syscallWriteStdOut+0x161>
  10164d:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101653:	8b 00                	mov    (%eax),%eax
  101655:	8d 50 01             	lea    0x1(%eax),%edx
  101658:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  10165e:	89 10                	mov    %edx,(%eax)
  101660:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101666:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10166c:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101672:	8b 00                	mov    (%eax),%eax
  101674:	83 f8 19             	cmp    $0x19,%eax
  101677:	75 1d                	jne    101696 <syscallWriteStdOut+0x161>
  101679:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  10167f:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  101685:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  10168b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101691:	e8 85 27 00 00       	call   103e1b <scrollScreen>
  101696:	ff 45 f4             	incl   -0xc(%ebp)
  101699:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10169c:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10169f:	0f 8c e4 fe ff ff    	jl     101589 <syscallWriteStdOut+0x54>
  1016a5:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  1016ab:	8b 10                	mov    (%eax),%edx
  1016ad:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1016b3:	8b 00                	mov    (%eax),%eax
  1016b5:	83 ec 08             	sub    $0x8,%esp
  1016b8:	52                   	push   %edx
  1016b9:	50                   	push   %eax
  1016ba:	e8 e9 26 00 00       	call   103da8 <updateCursor>
  1016bf:	83 c4 10             	add    $0x10,%esp
  1016c2:	90                   	nop
  1016c3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1016c6:	c9                   	leave  
  1016c7:	c3                   	ret    

001016c8 <syscallWriteShMem>:
  1016c8:	55                   	push   %ebp
  1016c9:	89 e5                	mov    %esp,%ebp
  1016cb:	53                   	push   %ebx
  1016cc:	83 ec 20             	sub    $0x20,%esp
  1016cf:	e8 95 12 00 00       	call   102969 <__x86.get_pc_thunk.dx>
  1016d4:	81 c2 2c 49 00 00    	add    $0x492c,%edx
  1016da:	8b 45 08             	mov    0x8(%ebp),%eax
  1016dd:	8b 40 0c             	mov    0xc(%eax),%eax
  1016e0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1016e3:	8b 45 08             	mov    0x8(%ebp),%eax
  1016e6:	8b 40 24             	mov    0x24(%eax),%eax
  1016e9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1016ec:	8b 45 08             	mov    0x8(%ebp),%eax
  1016ef:	8b 40 20             	mov    0x20(%eax),%eax
  1016f2:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1016f5:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1016fc:	8b 45 08             	mov    0x8(%ebp),%eax
  1016ff:	8b 40 14             	mov    0x14(%eax),%eax
  101702:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101705:	c6 45 eb 00          	movb   $0x0,-0x15(%ebp)
  101709:	8e 45 e4             	mov    -0x1c(%ebp),%es
  10170c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101713:	eb 26                	jmp    10173b <syscallWriteShMem+0x73>
  101715:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  101718:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10171b:	01 c8                	add    %ecx,%eax
  10171d:	26 8a 00             	mov    %es:(%eax),%al
  101720:	88 45 eb             	mov    %al,-0x15(%ebp)
  101723:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  101726:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101729:	8d 1c 01             	lea    (%ecx,%eax,1),%ebx
  10172c:	8a 4d eb             	mov    -0x15(%ebp),%cl
  10172f:	c7 c0 40 6a 10 00    	mov    $0x106a40,%eax
  101735:	88 0c 18             	mov    %cl,(%eax,%ebx,1)
  101738:	ff 45 f8             	incl   -0x8(%ebp)
  10173b:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10173e:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  101741:	7c d2                	jl     101715 <syscallWriteShMem+0x4d>
  101743:	90                   	nop
  101744:	83 c4 20             	add    $0x20,%esp
  101747:	5b                   	pop    %ebx
  101748:	5d                   	pop    %ebp
  101749:	c3                   	ret    

0010174a <syscallRead>:
  10174a:	55                   	push   %ebp
  10174b:	89 e5                	mov    %esp,%ebp
  10174d:	83 ec 08             	sub    $0x8,%esp
  101750:	e8 f0 ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101755:	05 ab 48 00 00       	add    $0x48ab,%eax
  10175a:	8b 55 08             	mov    0x8(%ebp),%edx
  10175d:	8b 52 28             	mov    0x28(%edx),%edx
  101760:	83 fa 01             	cmp    $0x1,%edx
  101763:	74 07                	je     10176c <syscallRead+0x22>
  101765:	83 fa 03             	cmp    $0x3,%edx
  101768:	74 20                	je     10178a <syscallRead+0x40>
  10176a:	eb 40                	jmp    1017ac <syscallRead+0x62>
  10176c:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101772:	8b 40 10             	mov    0x10(%eax),%eax
  101775:	83 f8 01             	cmp    $0x1,%eax
  101778:	75 2e                	jne    1017a8 <syscallRead+0x5e>
  10177a:	83 ec 0c             	sub    $0xc,%esp
  10177d:	ff 75 08             	pushl  0x8(%ebp)
  101780:	e8 2a 00 00 00       	call   1017af <syscallReadStdIn>
  101785:	83 c4 10             	add    $0x10,%esp
  101788:	eb 1e                	jmp    1017a8 <syscallRead+0x5e>
  10178a:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101790:	8b 40 30             	mov    0x30(%eax),%eax
  101793:	83 f8 01             	cmp    $0x1,%eax
  101796:	75 13                	jne    1017ab <syscallRead+0x61>
  101798:	83 ec 0c             	sub    $0xc,%esp
  10179b:	ff 75 08             	pushl  0x8(%ebp)
  10179e:	e8 e3 02 00 00       	call   101a86 <syscallReadShMem>
  1017a3:	83 c4 10             	add    $0x10,%esp
  1017a6:	eb 03                	jmp    1017ab <syscallRead+0x61>
  1017a8:	90                   	nop
  1017a9:	eb 01                	jmp    1017ac <syscallRead+0x62>
  1017ab:	90                   	nop
  1017ac:	90                   	nop
  1017ad:	c9                   	leave  
  1017ae:	c3                   	ret    

001017af <syscallReadStdIn>:
  1017af:	55                   	push   %ebp
  1017b0:	89 e5                	mov    %esp,%ebp
  1017b2:	56                   	push   %esi
  1017b3:	53                   	push   %ebx
  1017b4:	83 ec 10             	sub    $0x10,%esp
  1017b7:	e8 89 ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1017bc:	05 44 48 00 00       	add    $0x4844,%eax
  1017c1:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1017c7:	8b 52 14             	mov    0x14(%edx),%edx
  1017ca:	85 d2                	test   %edx,%edx
  1017cc:	0f 85 e9 01 00 00    	jne    1019bb <syscallReadStdIn+0x20c>
  1017d2:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1017d8:	8b 52 10             	mov    0x10(%edx),%edx
  1017db:	85 d2                	test   %edx,%edx
  1017dd:	75 0f                	jne    1017ee <syscallReadStdIn+0x3f>
  1017df:	8b 45 08             	mov    0x8(%ebp),%eax
  1017e2:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  1017e9:	e9 91 02 00 00       	jmp    101a7f <syscallReadStdIn+0x2d0>
  1017ee:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1017f4:	8b 0a                	mov    (%edx),%ecx
  1017f6:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1017fc:	89 ca                	mov    %ecx,%edx
  1017fe:	01 d2                	add    %edx,%edx
  101800:	01 ca                	add    %ecx,%edx
  101802:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101809:	01 ca                	add    %ecx,%edx
  10180b:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101812:	01 ca                	add    %ecx,%edx
  101814:	89 d1                	mov    %edx,%ecx
  101816:	c1 e1 04             	shl    $0x4,%ecx
  101819:	01 ca                	add    %ecx,%edx
  10181b:	c1 e2 02             	shl    $0x2,%edx
  10181e:	01 da                	add    %ebx,%edx
  101820:	81 c2 54 40 00 00    	add    $0x4054,%edx
  101826:	c7 02 02 00 00 00    	movl   $0x2,(%edx)
  10182c:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101832:	8b 0a                	mov    (%edx),%ecx
  101834:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  10183a:	89 ca                	mov    %ecx,%edx
  10183c:	01 d2                	add    %edx,%edx
  10183e:	01 ca                	add    %ecx,%edx
  101840:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101847:	01 ca                	add    %ecx,%edx
  101849:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101850:	01 ca                	add    %ecx,%edx
  101852:	89 d1                	mov    %edx,%ecx
  101854:	c1 e1 04             	shl    $0x4,%ecx
  101857:	01 ca                	add    %ecx,%edx
  101859:	c1 e2 02             	shl    $0x2,%edx
  10185c:	01 da                	add    %ebx,%edx
  10185e:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  101864:	c7 02 ff ff ff ff    	movl   $0xffffffff,(%edx)
  10186a:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101870:	8b 1a                	mov    (%edx),%ebx
  101872:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101878:	8b 4a 18             	mov    0x18(%edx),%ecx
  10187b:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101881:	89 da                	mov    %ebx,%edx
  101883:	01 d2                	add    %edx,%edx
  101885:	01 da                	add    %ebx,%edx
  101887:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  10188e:	01 da                	add    %ebx,%edx
  101890:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101897:	01 da                	add    %ebx,%edx
  101899:	89 d3                	mov    %edx,%ebx
  10189b:	c1 e3 04             	shl    $0x4,%ebx
  10189e:	01 da                	add    %ebx,%edx
  1018a0:	c1 e2 02             	shl    $0x2,%edx
  1018a3:	01 f2                	add    %esi,%edx
  1018a5:	81 c2 84 40 00 00    	add    $0x4084,%edx
  1018ab:	89 0a                	mov    %ecx,(%edx)
  1018ad:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1018b3:	8b 0a                	mov    (%edx),%ecx
  1018b5:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1018bb:	89 ca                	mov    %ecx,%edx
  1018bd:	01 d2                	add    %edx,%edx
  1018bf:	01 ca                	add    %ecx,%edx
  1018c1:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1018c8:	01 ca                	add    %ecx,%edx
  1018ca:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1018d1:	01 ca                	add    %ecx,%edx
  1018d3:	89 d1                	mov    %edx,%ecx
  1018d5:	c1 e1 04             	shl    $0x4,%ecx
  1018d8:	01 ca                	add    %ecx,%edx
  1018da:	c1 e2 02             	shl    $0x2,%edx
  1018dd:	01 da                	add    %ebx,%edx
  1018df:	8d 8a 88 40 00 00    	lea    0x4088(%edx),%ecx
  1018e5:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1018eb:	8d 52 18             	lea    0x18(%edx),%edx
  1018ee:	89 11                	mov    %edx,(%ecx)
  1018f0:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1018f6:	8b 0a                	mov    (%edx),%ecx
  1018f8:	89 ca                	mov    %ecx,%edx
  1018fa:	01 d2                	add    %edx,%edx
  1018fc:	01 ca                	add    %ecx,%edx
  1018fe:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101905:	01 ca                	add    %ecx,%edx
  101907:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  10190e:	01 ca                	add    %ecx,%edx
  101910:	89 d1                	mov    %edx,%ecx
  101912:	c1 e1 04             	shl    $0x4,%ecx
  101915:	01 ca                	add    %ecx,%edx
  101917:	c1 e2 02             	shl    $0x2,%edx
  10191a:	8d 8a 80 40 00 00    	lea    0x4080(%edx),%ecx
  101920:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  101926:	01 ca                	add    %ecx,%edx
  101928:	8d 4a 04             	lea    0x4(%edx),%ecx
  10192b:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101931:	89 4a 18             	mov    %ecx,0x18(%edx)
  101934:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  10193a:	8b 1a                	mov    (%edx),%ebx
  10193c:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101942:	8b 0a                	mov    (%edx),%ecx
  101944:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10194a:	89 ca                	mov    %ecx,%edx
  10194c:	01 d2                	add    %edx,%edx
  10194e:	01 ca                	add    %ecx,%edx
  101950:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101957:	01 ca                	add    %ecx,%edx
  101959:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101960:	01 ca                	add    %ecx,%edx
  101962:	89 d1                	mov    %edx,%ecx
  101964:	c1 e1 04             	shl    $0x4,%ecx
  101967:	01 ca                	add    %ecx,%edx
  101969:	c1 e2 02             	shl    $0x2,%edx
  10196c:	01 f2                	add    %esi,%edx
  10196e:	81 c2 84 40 00 00    	add    $0x4084,%edx
  101974:	8b 0a                	mov    (%edx),%ecx
  101976:	89 da                	mov    %ebx,%edx
  101978:	01 d2                	add    %edx,%edx
  10197a:	01 da                	add    %ebx,%edx
  10197c:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101983:	01 da                	add    %ebx,%edx
  101985:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  10198c:	01 da                	add    %ebx,%edx
  10198e:	89 d3                	mov    %edx,%ebx
  101990:	c1 e3 04             	shl    $0x4,%ebx
  101993:	01 da                	add    %ebx,%edx
  101995:	c1 e2 02             	shl    $0x2,%edx
  101998:	8d 9a 80 40 00 00    	lea    0x4080(%edx),%ebx
  10199e:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  1019a4:	01 da                	add    %ebx,%edx
  1019a6:	83 c2 04             	add    $0x4,%edx
  1019a9:	89 51 04             	mov    %edx,0x4(%ecx)
  1019ac:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1019b2:	c7 42 10 00 00 00 00 	movl   $0x0,0x10(%edx)
  1019b9:	cd 20                	int    $0x20
  1019bb:	8b 55 08             	mov    0x8(%ebp),%edx
  1019be:	8b 52 0c             	mov    0xc(%edx),%edx
  1019c1:	89 55 ec             	mov    %edx,-0x14(%ebp)
  1019c4:	8b 55 08             	mov    0x8(%ebp),%edx
  1019c7:	8b 52 24             	mov    0x24(%edx),%edx
  1019ca:	89 55 f0             	mov    %edx,-0x10(%ebp)
  1019cd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1019d4:	eb 3b                	jmp    101a11 <syscallReadStdIn+0x262>
  1019d6:	8e 45 ec             	mov    -0x14(%ebp),%es
  1019d9:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  1019df:	8b 0a                	mov    (%edx),%ecx
  1019e1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1019e4:	01 ca                	add    %ecx,%edx
  1019e6:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  1019ec:	85 d2                	test   %edx,%edx
  1019ee:	79 08                	jns    1019f8 <syscallReadStdIn+0x249>
  1019f0:	4a                   	dec    %edx
  1019f1:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  1019f7:	42                   	inc    %edx
  1019f8:	89 d1                	mov    %edx,%ecx
  1019fa:	c7 c2 60 7a 10 00    	mov    $0x107a60,%edx
  101a00:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
  101a03:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  101a06:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  101a09:	01 d9                	add    %ebx,%ecx
  101a0b:	26 88 11             	mov    %dl,%es:(%ecx)
  101a0e:	ff 45 f4             	incl   -0xc(%ebp)
  101a11:	8b 55 08             	mov    0x8(%ebp),%edx
  101a14:	8b 4a 20             	mov    0x20(%edx),%ecx
  101a17:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101a1a:	39 d1                	cmp    %edx,%ecx
  101a1c:	76 2d                	jbe    101a4b <syscallReadStdIn+0x29c>
  101a1e:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  101a24:	8b 0a                	mov    (%edx),%ecx
  101a26:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101a29:	01 ca                	add    %ecx,%edx
  101a2b:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  101a31:	85 d2                	test   %edx,%edx
  101a33:	79 08                	jns    101a3d <syscallReadStdIn+0x28e>
  101a35:	4a                   	dec    %edx
  101a36:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  101a3c:	42                   	inc    %edx
  101a3d:	89 d1                	mov    %edx,%ecx
  101a3f:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  101a45:	8b 12                	mov    (%edx),%edx
  101a47:	39 d1                	cmp    %edx,%ecx
  101a49:	75 8b                	jne    1019d6 <syscallReadStdIn+0x227>
  101a4b:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  101a51:	8b 0a                	mov    (%edx),%ecx
  101a53:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  101a59:	89 0a                	mov    %ecx,(%edx)
  101a5b:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101a61:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%edx)
  101a68:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101a6e:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  101a75:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101a78:	8b 45 08             	mov    0x8(%ebp),%eax
  101a7b:	89 50 2c             	mov    %edx,0x2c(%eax)
  101a7e:	90                   	nop
  101a7f:	83 c4 10             	add    $0x10,%esp
  101a82:	5b                   	pop    %ebx
  101a83:	5e                   	pop    %esi
  101a84:	5d                   	pop    %ebp
  101a85:	c3                   	ret    

00101a86 <syscallReadShMem>:
  101a86:	55                   	push   %ebp
  101a87:	89 e5                	mov    %esp,%ebp
  101a89:	53                   	push   %ebx
  101a8a:	83 ec 20             	sub    $0x20,%esp
  101a8d:	e8 d7 0e 00 00       	call   102969 <__x86.get_pc_thunk.dx>
  101a92:	81 c2 6e 45 00 00    	add    $0x456e,%edx
  101a98:	8b 45 08             	mov    0x8(%ebp),%eax
  101a9b:	8b 40 0c             	mov    0xc(%eax),%eax
  101a9e:	89 45 e8             	mov    %eax,-0x18(%ebp)
  101aa1:	8b 45 08             	mov    0x8(%ebp),%eax
  101aa4:	8b 40 24             	mov    0x24(%eax),%eax
  101aa7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101aaa:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101ab1:	8b 45 08             	mov    0x8(%ebp),%eax
  101ab4:	8b 40 20             	mov    0x20(%eax),%eax
  101ab7:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101aba:	8b 45 08             	mov    0x8(%ebp),%eax
  101abd:	8b 40 14             	mov    0x14(%eax),%eax
  101ac0:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101ac3:	eb 22                	jmp    101ae7 <syscallReadShMem+0x61>
  101ac5:	8e 45 e8             	mov    -0x18(%ebp),%es
  101ac8:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  101acb:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101ace:	01 c1                	add    %eax,%ecx
  101ad0:	c7 c0 40 6a 10 00    	mov    $0x106a40,%eax
  101ad6:	8a 04 08             	mov    (%eax,%ecx,1),%al
  101ad9:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  101adc:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101adf:	01 d9                	add    %ebx,%ecx
  101ae1:	26 88 01             	mov    %al,%es:(%ecx)
  101ae4:	ff 45 f8             	incl   -0x8(%ebp)
  101ae7:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101aea:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  101aed:	7c d6                	jl     101ac5 <syscallReadShMem+0x3f>
  101aef:	90                   	nop
  101af0:	83 c4 20             	add    $0x20,%esp
  101af3:	5b                   	pop    %ebx
  101af4:	5d                   	pop    %ebp
  101af5:	c3                   	ret    

00101af6 <syscallFork>:
  101af6:	55                   	push   %ebp
  101af7:	89 e5                	mov    %esp,%ebp
  101af9:	56                   	push   %esi
  101afa:	53                   	push   %ebx
  101afb:	83 ec 10             	sub    $0x10,%esp
  101afe:	e8 32 ed ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101b03:	81 c3 fd 44 00 00    	add    $0x44fd,%ebx
  101b09:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101b10:	eb 3c                	jmp    101b4e <syscallFork+0x58>
  101b12:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101b18:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101b1b:	89 d0                	mov    %edx,%eax
  101b1d:	01 c0                	add    %eax,%eax
  101b1f:	01 d0                	add    %edx,%eax
  101b21:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b28:	01 d0                	add    %edx,%eax
  101b2a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b31:	01 d0                	add    %edx,%eax
  101b33:	89 c2                	mov    %eax,%edx
  101b35:	c1 e2 04             	shl    $0x4,%edx
  101b38:	01 d0                	add    %edx,%eax
  101b3a:	c1 e0 02             	shl    $0x2,%eax
  101b3d:	01 c8                	add    %ecx,%eax
  101b3f:	05 54 40 00 00       	add    $0x4054,%eax
  101b44:	8b 00                	mov    (%eax),%eax
  101b46:	83 f8 03             	cmp    $0x3,%eax
  101b49:	74 0b                	je     101b56 <syscallFork+0x60>
  101b4b:	ff 45 f4             	incl   -0xc(%ebp)
  101b4e:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  101b52:	7e be                	jle    101b12 <syscallFork+0x1c>
  101b54:	eb 01                	jmp    101b57 <syscallFork+0x61>
  101b56:	90                   	nop
  101b57:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  101b5b:	0f 84 c5 0a 00 00    	je     102626 <syscallFork+0xb30>
  101b61:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101b67:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101b6a:	89 d0                	mov    %edx,%eax
  101b6c:	01 c0                	add    %eax,%eax
  101b6e:	01 d0                	add    %edx,%eax
  101b70:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b77:	01 d0                	add    %edx,%eax
  101b79:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b80:	01 d0                	add    %edx,%eax
  101b82:	89 c2                	mov    %eax,%edx
  101b84:	c1 e2 04             	shl    $0x4,%edx
  101b87:	01 d0                	add    %edx,%eax
  101b89:	c1 e0 02             	shl    $0x2,%eax
  101b8c:	01 c8                	add    %ecx,%eax
  101b8e:	05 54 40 00 00       	add    $0x4054,%eax
  101b93:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  101b99:	e8 43 f0 ff ff       	call   100be1 <enableInterrupt>
  101b9e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  101ba5:	eb 28                	jmp    101bcf <syscallFork+0xd9>
  101ba7:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101bad:	8b 00                	mov    (%eax),%eax
  101baf:	40                   	inc    %eax
  101bb0:	c1 e0 14             	shl    $0x14,%eax
  101bb3:	89 c2                	mov    %eax,%edx
  101bb5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101bb8:	01 d0                	add    %edx,%eax
  101bba:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101bbd:	42                   	inc    %edx
  101bbe:	89 d1                	mov    %edx,%ecx
  101bc0:	c1 e1 14             	shl    $0x14,%ecx
  101bc3:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101bc6:	01 ca                	add    %ecx,%edx
  101bc8:	8a 00                	mov    (%eax),%al
  101bca:	88 02                	mov    %al,(%edx)
  101bcc:	ff 45 f0             	incl   -0x10(%ebp)
  101bcf:	81 7d f0 ff ff 0f 00 	cmpl   $0xfffff,-0x10(%ebp)
  101bd6:	7e cf                	jle    101ba7 <syscallFork+0xb1>
  101bd8:	e8 15 f0 ff ff       	call   100bf2 <disableInterrupt>
  101bdd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101be0:	89 d0                	mov    %edx,%eax
  101be2:	01 c0                	add    %eax,%eax
  101be4:	01 d0                	add    %edx,%eax
  101be6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bed:	01 d0                	add    %edx,%eax
  101bef:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bf6:	01 d0                	add    %edx,%eax
  101bf8:	89 c2                	mov    %eax,%edx
  101bfa:	c1 e2 04             	shl    $0x4,%edx
  101bfd:	01 d0                	add    %edx,%eax
  101bff:	c1 e0 02             	shl    $0x2,%eax
  101c02:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101c08:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101c0e:	01 d0                	add    %edx,%eax
  101c10:	83 c0 0c             	add    $0xc,%eax
  101c13:	89 c6                	mov    %eax,%esi
  101c15:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101c1b:	8b 10                	mov    (%eax),%edx
  101c1d:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101c23:	89 d0                	mov    %edx,%eax
  101c25:	01 c0                	add    %eax,%eax
  101c27:	01 d0                	add    %edx,%eax
  101c29:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c30:	01 d0                	add    %edx,%eax
  101c32:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c39:	01 d0                	add    %edx,%eax
  101c3b:	89 c2                	mov    %eax,%edx
  101c3d:	c1 e2 04             	shl    $0x4,%edx
  101c40:	01 d0                	add    %edx,%eax
  101c42:	c1 e0 02             	shl    $0x2,%eax
  101c45:	01 c8                	add    %ecx,%eax
  101c47:	05 4c 40 00 00       	add    $0x404c,%eax
  101c4c:	8b 08                	mov    (%eax),%ecx
  101c4e:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101c54:	8b 10                	mov    (%eax),%edx
  101c56:	89 d0                	mov    %edx,%eax
  101c58:	01 c0                	add    %eax,%eax
  101c5a:	01 d0                	add    %edx,%eax
  101c5c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c63:	01 d0                	add    %edx,%eax
  101c65:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c6c:	01 d0                	add    %edx,%eax
  101c6e:	89 c2                	mov    %eax,%edx
  101c70:	c1 e2 04             	shl    $0x4,%edx
  101c73:	01 d0                	add    %edx,%eax
  101c75:	c1 e0 02             	shl    $0x2,%eax
  101c78:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101c7e:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101c84:	01 d0                	add    %edx,%eax
  101c86:	83 c0 0c             	add    $0xc,%eax
  101c89:	29 c1                	sub    %eax,%ecx
  101c8b:	89 c8                	mov    %ecx,%eax
  101c8d:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101c90:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101c96:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101c99:	89 d0                	mov    %edx,%eax
  101c9b:	01 c0                	add    %eax,%eax
  101c9d:	01 d0                	add    %edx,%eax
  101c9f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ca6:	01 d0                	add    %edx,%eax
  101ca8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101caf:	01 d0                	add    %edx,%eax
  101cb1:	89 c2                	mov    %eax,%edx
  101cb3:	c1 e2 04             	shl    $0x4,%edx
  101cb6:	01 d0                	add    %edx,%eax
  101cb8:	c1 e0 02             	shl    $0x2,%eax
  101cbb:	01 f0                	add    %esi,%eax
  101cbd:	05 4c 40 00 00       	add    $0x404c,%eax
  101cc2:	89 08                	mov    %ecx,(%eax)
  101cc4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101cc7:	89 d0                	mov    %edx,%eax
  101cc9:	01 c0                	add    %eax,%eax
  101ccb:	01 d0                	add    %edx,%eax
  101ccd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101cd4:	01 d0                	add    %edx,%eax
  101cd6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101cdd:	01 d0                	add    %edx,%eax
  101cdf:	89 c2                	mov    %eax,%edx
  101ce1:	c1 e2 04             	shl    $0x4,%edx
  101ce4:	01 d0                	add    %edx,%eax
  101ce6:	c1 e0 02             	shl    $0x2,%eax
  101ce9:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101cef:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101cf5:	01 d0                	add    %edx,%eax
  101cf7:	83 c0 0c             	add    $0xc,%eax
  101cfa:	89 c6                	mov    %eax,%esi
  101cfc:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101d02:	8b 10                	mov    (%eax),%edx
  101d04:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101d0a:	89 d0                	mov    %edx,%eax
  101d0c:	01 c0                	add    %eax,%eax
  101d0e:	01 d0                	add    %edx,%eax
  101d10:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d17:	01 d0                	add    %edx,%eax
  101d19:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d20:	01 d0                	add    %edx,%eax
  101d22:	89 c2                	mov    %eax,%edx
  101d24:	c1 e2 04             	shl    $0x4,%edx
  101d27:	01 d0                	add    %edx,%eax
  101d29:	c1 e0 02             	shl    $0x2,%eax
  101d2c:	01 c8                	add    %ecx,%eax
  101d2e:	05 50 40 00 00       	add    $0x4050,%eax
  101d33:	8b 08                	mov    (%eax),%ecx
  101d35:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101d3b:	8b 10                	mov    (%eax),%edx
  101d3d:	89 d0                	mov    %edx,%eax
  101d3f:	01 c0                	add    %eax,%eax
  101d41:	01 d0                	add    %edx,%eax
  101d43:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d4a:	01 d0                	add    %edx,%eax
  101d4c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d53:	01 d0                	add    %edx,%eax
  101d55:	89 c2                	mov    %eax,%edx
  101d57:	c1 e2 04             	shl    $0x4,%edx
  101d5a:	01 d0                	add    %edx,%eax
  101d5c:	c1 e0 02             	shl    $0x2,%eax
  101d5f:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101d65:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101d6b:	01 d0                	add    %edx,%eax
  101d6d:	83 c0 0c             	add    $0xc,%eax
  101d70:	29 c1                	sub    %eax,%ecx
  101d72:	89 c8                	mov    %ecx,%eax
  101d74:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101d77:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101d7d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101d80:	89 d0                	mov    %edx,%eax
  101d82:	01 c0                	add    %eax,%eax
  101d84:	01 d0                	add    %edx,%eax
  101d86:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d8d:	01 d0                	add    %edx,%eax
  101d8f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d96:	01 d0                	add    %edx,%eax
  101d98:	89 c2                	mov    %eax,%edx
  101d9a:	c1 e2 04             	shl    $0x4,%edx
  101d9d:	01 d0                	add    %edx,%eax
  101d9f:	c1 e0 02             	shl    $0x2,%eax
  101da2:	01 f0                	add    %esi,%eax
  101da4:	05 50 40 00 00       	add    $0x4050,%eax
  101da9:	89 08                	mov    %ecx,(%eax)
  101dab:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101db1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101db4:	89 d0                	mov    %edx,%eax
  101db6:	01 c0                	add    %eax,%eax
  101db8:	01 d0                	add    %edx,%eax
  101dba:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101dc1:	01 d0                	add    %edx,%eax
  101dc3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101dca:	01 d0                	add    %edx,%eax
  101dcc:	89 c2                	mov    %eax,%edx
  101dce:	c1 e2 04             	shl    $0x4,%edx
  101dd1:	01 d0                	add    %edx,%eax
  101dd3:	c1 e0 02             	shl    $0x2,%eax
  101dd6:	01 c8                	add    %ecx,%eax
  101dd8:	05 54 40 00 00       	add    $0x4054,%eax
  101ddd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101de3:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101de9:	8b 10                	mov    (%eax),%edx
  101deb:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101df1:	89 d0                	mov    %edx,%eax
  101df3:	01 c0                	add    %eax,%eax
  101df5:	01 d0                	add    %edx,%eax
  101df7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101dfe:	01 d0                	add    %edx,%eax
  101e00:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e07:	01 d0                	add    %edx,%eax
  101e09:	89 c2                	mov    %eax,%edx
  101e0b:	c1 e2 04             	shl    $0x4,%edx
  101e0e:	01 d0                	add    %edx,%eax
  101e10:	c1 e0 02             	shl    $0x2,%eax
  101e13:	01 c8                	add    %ecx,%eax
  101e15:	05 58 40 00 00       	add    $0x4058,%eax
  101e1a:	8b 10                	mov    (%eax),%edx
  101e1c:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101e22:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101e25:	89 c8                	mov    %ecx,%eax
  101e27:	01 c0                	add    %eax,%eax
  101e29:	01 c8                	add    %ecx,%eax
  101e2b:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101e32:	01 c8                	add    %ecx,%eax
  101e34:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101e3b:	01 c8                	add    %ecx,%eax
  101e3d:	89 c1                	mov    %eax,%ecx
  101e3f:	c1 e1 04             	shl    $0x4,%ecx
  101e42:	01 c8                	add    %ecx,%eax
  101e44:	c1 e0 02             	shl    $0x2,%eax
  101e47:	01 f0                	add    %esi,%eax
  101e49:	05 58 40 00 00       	add    $0x4058,%eax
  101e4e:	89 10                	mov    %edx,(%eax)
  101e50:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101e56:	8b 10                	mov    (%eax),%edx
  101e58:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101e5e:	89 d0                	mov    %edx,%eax
  101e60:	01 c0                	add    %eax,%eax
  101e62:	01 d0                	add    %edx,%eax
  101e64:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e6b:	01 d0                	add    %edx,%eax
  101e6d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e74:	01 d0                	add    %edx,%eax
  101e76:	89 c2                	mov    %eax,%edx
  101e78:	c1 e2 04             	shl    $0x4,%edx
  101e7b:	01 d0                	add    %edx,%eax
  101e7d:	c1 e0 02             	shl    $0x2,%eax
  101e80:	01 c8                	add    %ecx,%eax
  101e82:	05 5c 40 00 00       	add    $0x405c,%eax
  101e87:	8b 10                	mov    (%eax),%edx
  101e89:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101e8f:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101e92:	89 c8                	mov    %ecx,%eax
  101e94:	01 c0                	add    %eax,%eax
  101e96:	01 c8                	add    %ecx,%eax
  101e98:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101e9f:	01 c8                	add    %ecx,%eax
  101ea1:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ea8:	01 c8                	add    %ecx,%eax
  101eaa:	89 c1                	mov    %eax,%ecx
  101eac:	c1 e1 04             	shl    $0x4,%ecx
  101eaf:	01 c8                	add    %ecx,%eax
  101eb1:	c1 e0 02             	shl    $0x2,%eax
  101eb4:	01 f0                	add    %esi,%eax
  101eb6:	05 5c 40 00 00       	add    $0x405c,%eax
  101ebb:	89 10                	mov    %edx,(%eax)
  101ebd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101ec0:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101ec6:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101ec9:	89 c8                	mov    %ecx,%eax
  101ecb:	01 c0                	add    %eax,%eax
  101ecd:	01 c8                	add    %ecx,%eax
  101ecf:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ed6:	01 c8                	add    %ecx,%eax
  101ed8:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101edf:	01 c8                	add    %ecx,%eax
  101ee1:	89 c1                	mov    %eax,%ecx
  101ee3:	c1 e1 04             	shl    $0x4,%ecx
  101ee6:	01 c8                	add    %ecx,%eax
  101ee8:	c1 e0 02             	shl    $0x2,%eax
  101eeb:	01 f0                	add    %esi,%eax
  101eed:	05 60 40 00 00       	add    $0x4060,%eax
  101ef2:	89 10                	mov    %edx,(%eax)
  101ef4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101ef7:	40                   	inc    %eax
  101ef8:	01 c0                	add    %eax,%eax
  101efa:	c1 e0 03             	shl    $0x3,%eax
  101efd:	83 c8 03             	or     $0x3,%eax
  101f00:	89 c1                	mov    %eax,%ecx
  101f02:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101f08:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101f0b:	89 d0                	mov    %edx,%eax
  101f0d:	01 c0                	add    %eax,%eax
  101f0f:	01 d0                	add    %edx,%eax
  101f11:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f18:	01 d0                	add    %edx,%eax
  101f1a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f21:	01 d0                	add    %edx,%eax
  101f23:	89 c2                	mov    %eax,%edx
  101f25:	c1 e2 04             	shl    $0x4,%edx
  101f28:	01 d0                	add    %edx,%eax
  101f2a:	c1 e0 02             	shl    $0x2,%eax
  101f2d:	01 f0                	add    %esi,%eax
  101f2f:	05 48 40 00 00       	add    $0x4048,%eax
  101f34:	89 08                	mov    %ecx,(%eax)
  101f36:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101f3c:	8b 10                	mov    (%eax),%edx
  101f3e:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101f44:	89 d0                	mov    %edx,%eax
  101f46:	01 c0                	add    %eax,%eax
  101f48:	01 d0                	add    %edx,%eax
  101f4a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f51:	01 d0                	add    %edx,%eax
  101f53:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f5a:	01 d0                	add    %edx,%eax
  101f5c:	89 c2                	mov    %eax,%edx
  101f5e:	c1 e2 04             	shl    $0x4,%edx
  101f61:	01 d0                	add    %edx,%eax
  101f63:	c1 e0 02             	shl    $0x2,%eax
  101f66:	01 c8                	add    %ecx,%eax
  101f68:	05 44 40 00 00       	add    $0x4044,%eax
  101f6d:	8b 10                	mov    (%eax),%edx
  101f6f:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101f75:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101f78:	89 c8                	mov    %ecx,%eax
  101f7a:	01 c0                	add    %eax,%eax
  101f7c:	01 c8                	add    %ecx,%eax
  101f7e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101f85:	01 c8                	add    %ecx,%eax
  101f87:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101f8e:	01 c8                	add    %ecx,%eax
  101f90:	89 c1                	mov    %eax,%ecx
  101f92:	c1 e1 04             	shl    $0x4,%ecx
  101f95:	01 c8                	add    %ecx,%eax
  101f97:	c1 e0 02             	shl    $0x2,%eax
  101f9a:	01 f0                	add    %esi,%eax
  101f9c:	05 44 40 00 00       	add    $0x4044,%eax
  101fa1:	89 10                	mov    %edx,(%eax)
  101fa3:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101fa9:	8b 10                	mov    (%eax),%edx
  101fab:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101fb1:	89 d0                	mov    %edx,%eax
  101fb3:	01 c0                	add    %eax,%eax
  101fb5:	01 d0                	add    %edx,%eax
  101fb7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fbe:	01 d0                	add    %edx,%eax
  101fc0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fc7:	01 d0                	add    %edx,%eax
  101fc9:	89 c2                	mov    %eax,%edx
  101fcb:	c1 e2 04             	shl    $0x4,%edx
  101fce:	01 d0                	add    %edx,%eax
  101fd0:	c1 e0 02             	shl    $0x2,%eax
  101fd3:	01 c8                	add    %ecx,%eax
  101fd5:	05 40 40 00 00       	add    $0x4040,%eax
  101fda:	8b 10                	mov    (%eax),%edx
  101fdc:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101fe2:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101fe5:	89 c8                	mov    %ecx,%eax
  101fe7:	01 c0                	add    %eax,%eax
  101fe9:	01 c8                	add    %ecx,%eax
  101feb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ff2:	01 c8                	add    %ecx,%eax
  101ff4:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ffb:	01 c8                	add    %ecx,%eax
  101ffd:	89 c1                	mov    %eax,%ecx
  101fff:	c1 e1 04             	shl    $0x4,%ecx
  102002:	01 c8                	add    %ecx,%eax
  102004:	c1 e0 02             	shl    $0x2,%eax
  102007:	01 f0                	add    %esi,%eax
  102009:	05 40 40 00 00       	add    $0x4040,%eax
  10200e:	89 10                	mov    %edx,(%eax)
  102010:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102013:	01 c0                	add    %eax,%eax
  102015:	40                   	inc    %eax
  102016:	c1 e0 03             	shl    $0x3,%eax
  102019:	83 c8 03             	or     $0x3,%eax
  10201c:	89 c1                	mov    %eax,%ecx
  10201e:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102024:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102027:	89 d0                	mov    %edx,%eax
  102029:	01 c0                	add    %eax,%eax
  10202b:	01 d0                	add    %edx,%eax
  10202d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102034:	01 d0                	add    %edx,%eax
  102036:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10203d:	01 d0                	add    %edx,%eax
  10203f:	89 c2                	mov    %eax,%edx
  102041:	c1 e2 04             	shl    $0x4,%edx
  102044:	01 d0                	add    %edx,%eax
  102046:	c1 e0 02             	shl    $0x2,%eax
  102049:	01 f0                	add    %esi,%eax
  10204b:	05 3c 40 00 00       	add    $0x403c,%eax
  102050:	89 08                	mov    %ecx,(%eax)
  102052:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102058:	8b 10                	mov    (%eax),%edx
  10205a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102060:	89 d0                	mov    %edx,%eax
  102062:	01 c0                	add    %eax,%eax
  102064:	01 d0                	add    %edx,%eax
  102066:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10206d:	01 d0                	add    %edx,%eax
  10206f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102076:	01 d0                	add    %edx,%eax
  102078:	89 c2                	mov    %eax,%edx
  10207a:	c1 e2 04             	shl    $0x4,%edx
  10207d:	01 d0                	add    %edx,%eax
  10207f:	c1 e0 02             	shl    $0x2,%eax
  102082:	01 c8                	add    %ecx,%eax
  102084:	05 38 40 00 00       	add    $0x4038,%eax
  102089:	8b 10                	mov    (%eax),%edx
  10208b:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102091:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102094:	89 c8                	mov    %ecx,%eax
  102096:	01 c0                	add    %eax,%eax
  102098:	01 c8                	add    %ecx,%eax
  10209a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1020a1:	01 c8                	add    %ecx,%eax
  1020a3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1020aa:	01 c8                	add    %ecx,%eax
  1020ac:	89 c1                	mov    %eax,%ecx
  1020ae:	c1 e1 04             	shl    $0x4,%ecx
  1020b1:	01 c8                	add    %ecx,%eax
  1020b3:	c1 e0 02             	shl    $0x2,%eax
  1020b6:	01 f0                	add    %esi,%eax
  1020b8:	05 38 40 00 00       	add    $0x4038,%eax
  1020bd:	89 10                	mov    %edx,(%eax)
  1020bf:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1020c5:	8b 10                	mov    (%eax),%edx
  1020c7:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1020cd:	89 d0                	mov    %edx,%eax
  1020cf:	01 c0                	add    %eax,%eax
  1020d1:	01 d0                	add    %edx,%eax
  1020d3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020da:	01 d0                	add    %edx,%eax
  1020dc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020e3:	01 d0                	add    %edx,%eax
  1020e5:	89 c2                	mov    %eax,%edx
  1020e7:	c1 e2 04             	shl    $0x4,%edx
  1020ea:	01 d0                	add    %edx,%eax
  1020ec:	c1 e0 02             	shl    $0x2,%eax
  1020ef:	01 c8                	add    %ecx,%eax
  1020f1:	05 2c 40 00 00       	add    $0x402c,%eax
  1020f6:	8b 10                	mov    (%eax),%edx
  1020f8:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1020fe:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102101:	89 c8                	mov    %ecx,%eax
  102103:	01 c0                	add    %eax,%eax
  102105:	01 c8                	add    %ecx,%eax
  102107:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10210e:	01 c8                	add    %ecx,%eax
  102110:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102117:	01 c8                	add    %ecx,%eax
  102119:	89 c1                	mov    %eax,%ecx
  10211b:	c1 e1 04             	shl    $0x4,%ecx
  10211e:	01 c8                	add    %ecx,%eax
  102120:	c1 e0 02             	shl    $0x2,%eax
  102123:	01 f0                	add    %esi,%eax
  102125:	05 2c 40 00 00       	add    $0x402c,%eax
  10212a:	89 10                	mov    %edx,(%eax)
  10212c:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102132:	8b 10                	mov    (%eax),%edx
  102134:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10213a:	89 d0                	mov    %edx,%eax
  10213c:	01 c0                	add    %eax,%eax
  10213e:	01 d0                	add    %edx,%eax
  102140:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102147:	01 d0                	add    %edx,%eax
  102149:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102150:	01 d0                	add    %edx,%eax
  102152:	89 c2                	mov    %eax,%edx
  102154:	c1 e2 04             	shl    $0x4,%edx
  102157:	01 d0                	add    %edx,%eax
  102159:	c1 e0 02             	shl    $0x2,%eax
  10215c:	01 c8                	add    %ecx,%eax
  10215e:	05 28 40 00 00       	add    $0x4028,%eax
  102163:	8b 10                	mov    (%eax),%edx
  102165:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10216b:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10216e:	89 c8                	mov    %ecx,%eax
  102170:	01 c0                	add    %eax,%eax
  102172:	01 c8                	add    %ecx,%eax
  102174:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10217b:	01 c8                	add    %ecx,%eax
  10217d:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102184:	01 c8                	add    %ecx,%eax
  102186:	89 c1                	mov    %eax,%ecx
  102188:	c1 e1 04             	shl    $0x4,%ecx
  10218b:	01 c8                	add    %ecx,%eax
  10218d:	c1 e0 02             	shl    $0x2,%eax
  102190:	01 f0                	add    %esi,%eax
  102192:	05 28 40 00 00       	add    $0x4028,%eax
  102197:	89 10                	mov    %edx,(%eax)
  102199:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10219f:	8b 10                	mov    (%eax),%edx
  1021a1:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1021a7:	89 d0                	mov    %edx,%eax
  1021a9:	01 c0                	add    %eax,%eax
  1021ab:	01 d0                	add    %edx,%eax
  1021ad:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021b4:	01 d0                	add    %edx,%eax
  1021b6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021bd:	01 d0                	add    %edx,%eax
  1021bf:	89 c2                	mov    %eax,%edx
  1021c1:	c1 e2 04             	shl    $0x4,%edx
  1021c4:	01 d0                	add    %edx,%eax
  1021c6:	c1 e0 02             	shl    $0x2,%eax
  1021c9:	01 c8                	add    %ecx,%eax
  1021cb:	05 24 40 00 00       	add    $0x4024,%eax
  1021d0:	8b 10                	mov    (%eax),%edx
  1021d2:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1021d8:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1021db:	89 c8                	mov    %ecx,%eax
  1021dd:	01 c0                	add    %eax,%eax
  1021df:	01 c8                	add    %ecx,%eax
  1021e1:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021e8:	01 c8                	add    %ecx,%eax
  1021ea:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021f1:	01 c8                	add    %ecx,%eax
  1021f3:	89 c1                	mov    %eax,%ecx
  1021f5:	c1 e1 04             	shl    $0x4,%ecx
  1021f8:	01 c8                	add    %ecx,%eax
  1021fa:	c1 e0 02             	shl    $0x2,%eax
  1021fd:	01 f0                	add    %esi,%eax
  1021ff:	05 24 40 00 00       	add    $0x4024,%eax
  102204:	89 10                	mov    %edx,(%eax)
  102206:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10220c:	8b 10                	mov    (%eax),%edx
  10220e:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102214:	89 d0                	mov    %edx,%eax
  102216:	01 c0                	add    %eax,%eax
  102218:	01 d0                	add    %edx,%eax
  10221a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102221:	01 d0                	add    %edx,%eax
  102223:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10222a:	01 d0                	add    %edx,%eax
  10222c:	89 c2                	mov    %eax,%edx
  10222e:	c1 e2 04             	shl    $0x4,%edx
  102231:	01 d0                	add    %edx,%eax
  102233:	c1 e0 02             	shl    $0x2,%eax
  102236:	01 c8                	add    %ecx,%eax
  102238:	05 20 40 00 00       	add    $0x4020,%eax
  10223d:	8b 10                	mov    (%eax),%edx
  10223f:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102245:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102248:	89 c8                	mov    %ecx,%eax
  10224a:	01 c0                	add    %eax,%eax
  10224c:	01 c8                	add    %ecx,%eax
  10224e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102255:	01 c8                	add    %ecx,%eax
  102257:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10225e:	01 c8                	add    %ecx,%eax
  102260:	89 c1                	mov    %eax,%ecx
  102262:	c1 e1 04             	shl    $0x4,%ecx
  102265:	01 c8                	add    %ecx,%eax
  102267:	c1 e0 02             	shl    $0x2,%eax
  10226a:	01 f0                	add    %esi,%eax
  10226c:	05 20 40 00 00       	add    $0x4020,%eax
  102271:	89 10                	mov    %edx,(%eax)
  102273:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102279:	8b 10                	mov    (%eax),%edx
  10227b:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102281:	89 d0                	mov    %edx,%eax
  102283:	01 c0                	add    %eax,%eax
  102285:	01 d0                	add    %edx,%eax
  102287:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10228e:	01 d0                	add    %edx,%eax
  102290:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102297:	01 d0                	add    %edx,%eax
  102299:	89 c2                	mov    %eax,%edx
  10229b:	c1 e2 04             	shl    $0x4,%edx
  10229e:	01 d0                	add    %edx,%eax
  1022a0:	c1 e0 02             	shl    $0x2,%eax
  1022a3:	01 c8                	add    %ecx,%eax
  1022a5:	05 1c 40 00 00       	add    $0x401c,%eax
  1022aa:	8b 10                	mov    (%eax),%edx
  1022ac:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1022b2:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1022b5:	89 c8                	mov    %ecx,%eax
  1022b7:	01 c0                	add    %eax,%eax
  1022b9:	01 c8                	add    %ecx,%eax
  1022bb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022c2:	01 c8                	add    %ecx,%eax
  1022c4:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022cb:	01 c8                	add    %ecx,%eax
  1022cd:	89 c1                	mov    %eax,%ecx
  1022cf:	c1 e1 04             	shl    $0x4,%ecx
  1022d2:	01 c8                	add    %ecx,%eax
  1022d4:	c1 e0 02             	shl    $0x2,%eax
  1022d7:	01 f0                	add    %esi,%eax
  1022d9:	05 1c 40 00 00       	add    $0x401c,%eax
  1022de:	89 10                	mov    %edx,(%eax)
  1022e0:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1022e6:	8b 10                	mov    (%eax),%edx
  1022e8:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1022ee:	89 d0                	mov    %edx,%eax
  1022f0:	01 c0                	add    %eax,%eax
  1022f2:	01 d0                	add    %edx,%eax
  1022f4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022fb:	01 d0                	add    %edx,%eax
  1022fd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102304:	01 d0                	add    %edx,%eax
  102306:	89 c2                	mov    %eax,%edx
  102308:	c1 e2 04             	shl    $0x4,%edx
  10230b:	01 d0                	add    %edx,%eax
  10230d:	c1 e0 02             	shl    $0x2,%eax
  102310:	01 c8                	add    %ecx,%eax
  102312:	05 18 40 00 00       	add    $0x4018,%eax
  102317:	8b 10                	mov    (%eax),%edx
  102319:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10231f:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102322:	89 c8                	mov    %ecx,%eax
  102324:	01 c0                	add    %eax,%eax
  102326:	01 c8                	add    %ecx,%eax
  102328:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10232f:	01 c8                	add    %ecx,%eax
  102331:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102338:	01 c8                	add    %ecx,%eax
  10233a:	89 c1                	mov    %eax,%ecx
  10233c:	c1 e1 04             	shl    $0x4,%ecx
  10233f:	01 c8                	add    %ecx,%eax
  102341:	c1 e0 02             	shl    $0x2,%eax
  102344:	01 f0                	add    %esi,%eax
  102346:	05 18 40 00 00       	add    $0x4018,%eax
  10234b:	89 10                	mov    %edx,(%eax)
  10234d:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102353:	8b 10                	mov    (%eax),%edx
  102355:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10235b:	89 d0                	mov    %edx,%eax
  10235d:	01 c0                	add    %eax,%eax
  10235f:	01 d0                	add    %edx,%eax
  102361:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102368:	01 d0                	add    %edx,%eax
  10236a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102371:	01 d0                	add    %edx,%eax
  102373:	89 c2                	mov    %eax,%edx
  102375:	c1 e2 04             	shl    $0x4,%edx
  102378:	01 d0                	add    %edx,%eax
  10237a:	c1 e0 02             	shl    $0x2,%eax
  10237d:	01 c8                	add    %ecx,%eax
  10237f:	05 14 40 00 00       	add    $0x4014,%eax
  102384:	8b 10                	mov    (%eax),%edx
  102386:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10238c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10238f:	89 c8                	mov    %ecx,%eax
  102391:	01 c0                	add    %eax,%eax
  102393:	01 c8                	add    %ecx,%eax
  102395:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10239c:	01 c8                	add    %ecx,%eax
  10239e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1023a5:	01 c8                	add    %ecx,%eax
  1023a7:	89 c1                	mov    %eax,%ecx
  1023a9:	c1 e1 04             	shl    $0x4,%ecx
  1023ac:	01 c8                	add    %ecx,%eax
  1023ae:	c1 e0 02             	shl    $0x2,%eax
  1023b1:	01 f0                	add    %esi,%eax
  1023b3:	05 14 40 00 00       	add    $0x4014,%eax
  1023b8:	89 10                	mov    %edx,(%eax)
  1023ba:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1023c0:	8b 10                	mov    (%eax),%edx
  1023c2:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1023c8:	89 d0                	mov    %edx,%eax
  1023ca:	01 c0                	add    %eax,%eax
  1023cc:	01 d0                	add    %edx,%eax
  1023ce:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023d5:	01 d0                	add    %edx,%eax
  1023d7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023de:	01 d0                	add    %edx,%eax
  1023e0:	89 c2                	mov    %eax,%edx
  1023e2:	c1 e2 04             	shl    $0x4,%edx
  1023e5:	01 d0                	add    %edx,%eax
  1023e7:	c1 e0 02             	shl    $0x2,%eax
  1023ea:	01 c8                	add    %ecx,%eax
  1023ec:	05 10 40 00 00       	add    $0x4010,%eax
  1023f1:	8b 10                	mov    (%eax),%edx
  1023f3:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1023f9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1023fc:	89 c8                	mov    %ecx,%eax
  1023fe:	01 c0                	add    %eax,%eax
  102400:	01 c8                	add    %ecx,%eax
  102402:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102409:	01 c8                	add    %ecx,%eax
  10240b:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102412:	01 c8                	add    %ecx,%eax
  102414:	89 c1                	mov    %eax,%ecx
  102416:	c1 e1 04             	shl    $0x4,%ecx
  102419:	01 c8                	add    %ecx,%eax
  10241b:	c1 e0 02             	shl    $0x2,%eax
  10241e:	01 f0                	add    %esi,%eax
  102420:	05 10 40 00 00       	add    $0x4010,%eax
  102425:	89 10                	mov    %edx,(%eax)
  102427:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10242a:	40                   	inc    %eax
  10242b:	01 c0                	add    %eax,%eax
  10242d:	c1 e0 03             	shl    $0x3,%eax
  102430:	83 c8 03             	or     $0x3,%eax
  102433:	89 c1                	mov    %eax,%ecx
  102435:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10243b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10243e:	89 d0                	mov    %edx,%eax
  102440:	01 c0                	add    %eax,%eax
  102442:	01 d0                	add    %edx,%eax
  102444:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10244b:	01 d0                	add    %edx,%eax
  10244d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102454:	01 d0                	add    %edx,%eax
  102456:	89 c2                	mov    %eax,%edx
  102458:	c1 e2 04             	shl    $0x4,%edx
  10245b:	01 d0                	add    %edx,%eax
  10245d:	c1 e0 02             	shl    $0x2,%eax
  102460:	01 f0                	add    %esi,%eax
  102462:	05 0c 40 00 00       	add    $0x400c,%eax
  102467:	89 08                	mov    %ecx,(%eax)
  102469:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10246f:	8b 10                	mov    (%eax),%edx
  102471:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102477:	89 d0                	mov    %edx,%eax
  102479:	01 c0                	add    %eax,%eax
  10247b:	01 d0                	add    %edx,%eax
  10247d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102484:	01 d0                	add    %edx,%eax
  102486:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10248d:	01 d0                	add    %edx,%eax
  10248f:	89 c2                	mov    %eax,%edx
  102491:	c1 e2 04             	shl    $0x4,%edx
  102494:	01 d0                	add    %edx,%eax
  102496:	c1 e0 02             	shl    $0x2,%eax
  102499:	01 c8                	add    %ecx,%eax
  10249b:	05 08 40 00 00       	add    $0x4008,%eax
  1024a0:	8b 10                	mov    (%eax),%edx
  1024a2:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1024a8:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1024ab:	89 c8                	mov    %ecx,%eax
  1024ad:	01 c0                	add    %eax,%eax
  1024af:	01 c8                	add    %ecx,%eax
  1024b1:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024b8:	01 c8                	add    %ecx,%eax
  1024ba:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024c1:	01 c8                	add    %ecx,%eax
  1024c3:	89 c1                	mov    %eax,%ecx
  1024c5:	c1 e1 04             	shl    $0x4,%ecx
  1024c8:	01 c8                	add    %ecx,%eax
  1024ca:	c1 e0 02             	shl    $0x2,%eax
  1024cd:	01 f0                	add    %esi,%eax
  1024cf:	05 08 40 00 00       	add    $0x4008,%eax
  1024d4:	89 10                	mov    %edx,(%eax)
  1024d6:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1024dc:	8b 10                	mov    (%eax),%edx
  1024de:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1024e4:	89 d0                	mov    %edx,%eax
  1024e6:	01 c0                	add    %eax,%eax
  1024e8:	01 d0                	add    %edx,%eax
  1024ea:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024f1:	01 d0                	add    %edx,%eax
  1024f3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024fa:	01 d0                	add    %edx,%eax
  1024fc:	89 c2                	mov    %eax,%edx
  1024fe:	c1 e2 04             	shl    $0x4,%edx
  102501:	01 d0                	add    %edx,%eax
  102503:	c1 e0 02             	shl    $0x2,%eax
  102506:	01 c8                	add    %ecx,%eax
  102508:	05 04 40 00 00       	add    $0x4004,%eax
  10250d:	8b 10                	mov    (%eax),%edx
  10250f:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102515:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102518:	89 c8                	mov    %ecx,%eax
  10251a:	01 c0                	add    %eax,%eax
  10251c:	01 c8                	add    %ecx,%eax
  10251e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102525:	01 c8                	add    %ecx,%eax
  102527:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10252e:	01 c8                	add    %ecx,%eax
  102530:	89 c1                	mov    %eax,%ecx
  102532:	c1 e1 04             	shl    $0x4,%ecx
  102535:	01 c8                	add    %ecx,%eax
  102537:	c1 e0 02             	shl    $0x2,%eax
  10253a:	01 f0                	add    %esi,%eax
  10253c:	05 04 40 00 00       	add    $0x4004,%eax
  102541:	89 10                	mov    %edx,(%eax)
  102543:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102549:	8b 10                	mov    (%eax),%edx
  10254b:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102551:	89 d0                	mov    %edx,%eax
  102553:	01 c0                	add    %eax,%eax
  102555:	01 d0                	add    %edx,%eax
  102557:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10255e:	01 d0                	add    %edx,%eax
  102560:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102567:	01 d0                	add    %edx,%eax
  102569:	89 c2                	mov    %eax,%edx
  10256b:	c1 e2 04             	shl    $0x4,%edx
  10256e:	01 d0                	add    %edx,%eax
  102570:	c1 e0 02             	shl    $0x2,%eax
  102573:	01 c8                	add    %ecx,%eax
  102575:	05 00 40 00 00       	add    $0x4000,%eax
  10257a:	8b 10                	mov    (%eax),%edx
  10257c:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102582:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102585:	89 c8                	mov    %ecx,%eax
  102587:	01 c0                	add    %eax,%eax
  102589:	01 c8                	add    %ecx,%eax
  10258b:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102592:	01 c8                	add    %ecx,%eax
  102594:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10259b:	01 c8                	add    %ecx,%eax
  10259d:	89 c1                	mov    %eax,%ecx
  10259f:	c1 e1 04             	shl    $0x4,%ecx
  1025a2:	01 c8                	add    %ecx,%eax
  1025a4:	c1 e0 02             	shl    $0x2,%eax
  1025a7:	01 f0                	add    %esi,%eax
  1025a9:	05 00 40 00 00       	add    $0x4000,%eax
  1025ae:	89 10                	mov    %edx,(%eax)
  1025b0:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1025b6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1025b9:	89 d0                	mov    %edx,%eax
  1025bb:	01 c0                	add    %eax,%eax
  1025bd:	01 d0                	add    %edx,%eax
  1025bf:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1025c6:	01 d0                	add    %edx,%eax
  1025c8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1025cf:	01 d0                	add    %edx,%eax
  1025d1:	89 c2                	mov    %eax,%edx
  1025d3:	c1 e2 04             	shl    $0x4,%edx
  1025d6:	01 d0                	add    %edx,%eax
  1025d8:	c1 e0 02             	shl    $0x2,%eax
  1025db:	01 c8                	add    %ecx,%eax
  1025dd:	05 2c 40 00 00       	add    $0x402c,%eax
  1025e2:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1025e8:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1025ee:	8b 08                	mov    (%eax),%ecx
  1025f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1025f3:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1025f9:	89 c8                	mov    %ecx,%eax
  1025fb:	01 c0                	add    %eax,%eax
  1025fd:	01 c8                	add    %ecx,%eax
  1025ff:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102606:	01 c8                	add    %ecx,%eax
  102608:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10260f:	01 c8                	add    %ecx,%eax
  102611:	89 c1                	mov    %eax,%ecx
  102613:	c1 e1 04             	shl    $0x4,%ecx
  102616:	01 c8                	add    %ecx,%eax
  102618:	c1 e0 02             	shl    $0x2,%eax
  10261b:	01 d8                	add    %ebx,%eax
  10261d:	05 2c 40 00 00       	add    $0x402c,%eax
  102622:	89 10                	mov    %edx,(%eax)
  102624:	eb 3e                	jmp    102664 <syscallFork+0xb6e>
  102626:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10262c:	8b 10                	mov    (%eax),%edx
  10262e:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102634:	89 d0                	mov    %edx,%eax
  102636:	01 c0                	add    %eax,%eax
  102638:	01 d0                	add    %edx,%eax
  10263a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102641:	01 d0                	add    %edx,%eax
  102643:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10264a:	01 d0                	add    %edx,%eax
  10264c:	89 c2                	mov    %eax,%edx
  10264e:	c1 e2 04             	shl    $0x4,%edx
  102651:	01 d0                	add    %edx,%eax
  102653:	c1 e0 02             	shl    $0x2,%eax
  102656:	01 c8                	add    %ecx,%eax
  102658:	05 2c 40 00 00       	add    $0x402c,%eax
  10265d:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  102663:	90                   	nop
  102664:	83 c4 10             	add    $0x10,%esp
  102667:	5b                   	pop    %ebx
  102668:	5e                   	pop    %esi
  102669:	5d                   	pop    %ebp
  10266a:	c3                   	ret    

0010266b <syscallExec>:
  10266b:	55                   	push   %ebp
  10266c:	89 e5                	mov    %esp,%ebp
  10266e:	53                   	push   %ebx
  10266f:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  102675:	e8 ef 02 00 00       	call   102969 <__x86.get_pc_thunk.dx>
  10267a:	81 c2 86 39 00 00    	add    $0x3986,%edx
  102680:	8b 45 08             	mov    0x8(%ebp),%eax
  102683:	8b 40 0c             	mov    0xc(%eax),%eax
  102686:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102689:	8b 45 08             	mov    0x8(%ebp),%eax
  10268c:	8b 40 28             	mov    0x28(%eax),%eax
  10268f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102692:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102699:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  10269d:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1026a4:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  1026ab:	00 00 00 
  1026ae:	8e 45 e4             	mov    -0x1c(%ebp),%es
  1026b1:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1026b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1026b7:	01 c8                	add    %ecx,%eax
  1026b9:	26 8a 00             	mov    %es:(%eax),%al
  1026bc:	88 45 f3             	mov    %al,-0xd(%ebp)
  1026bf:	eb 21                	jmp    1026e2 <syscallExec+0x77>
  1026c1:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  1026c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1026ca:	01 c1                	add    %eax,%ecx
  1026cc:	8a 45 f3             	mov    -0xd(%ebp),%al
  1026cf:	88 01                	mov    %al,(%ecx)
  1026d1:	ff 45 f4             	incl   -0xc(%ebp)
  1026d4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1026d7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1026da:	01 c8                	add    %ecx,%eax
  1026dc:	26 8a 00             	mov    %es:(%eax),%al
  1026df:	88 45 f3             	mov    %al,-0xd(%ebp)
  1026e2:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  1026e6:	75 d9                	jne    1026c1 <syscallExec+0x56>
  1026e8:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  1026ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1026f1:	01 c8                	add    %ecx,%eax
  1026f3:	c6 00 00             	movb   $0x0,(%eax)
  1026f6:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1026fc:	8b 00                	mov    (%eax),%eax
  1026fe:	40                   	inc    %eax
  1026ff:	c1 e0 14             	shl    $0x14,%eax
  102702:	89 c1                	mov    %eax,%ecx
  102704:	83 ec 04             	sub    $0x4,%esp
  102707:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  10270d:	50                   	push   %eax
  10270e:	51                   	push   %ecx
  10270f:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  102715:	50                   	push   %eax
  102716:	89 d3                	mov    %edx,%ebx
  102718:	e8 00 0e 00 00       	call   10351d <loadElf>
  10271d:	83 c4 10             	add    $0x10,%esp
  102720:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102723:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  102727:	75 0c                	jne    102735 <syscallExec+0xca>
  102729:	8b 45 08             	mov    0x8(%ebp),%eax
  10272c:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  102733:	eb 0d                	jmp    102742 <syscallExec+0xd7>
  102735:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
  10273b:	8b 45 08             	mov    0x8(%ebp),%eax
  10273e:	89 50 38             	mov    %edx,0x38(%eax)
  102741:	90                   	nop
  102742:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102745:	c9                   	leave  
  102746:	c3                   	ret    

00102747 <syscallSleep>:
  102747:	55                   	push   %ebp
  102748:	89 e5                	mov    %esp,%ebp
  10274a:	53                   	push   %ebx
  10274b:	e8 19 02 00 00       	call   102969 <__x86.get_pc_thunk.dx>
  102750:	81 c2 b0 38 00 00    	add    $0x38b0,%edx
  102756:	8b 45 08             	mov    0x8(%ebp),%eax
  102759:	8b 40 28             	mov    0x28(%eax),%eax
  10275c:	85 c0                	test   %eax,%eax
  10275e:	0f 84 81 00 00 00    	je     1027e5 <syscallSleep+0x9e>
  102764:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10276a:	8b 08                	mov    (%eax),%ecx
  10276c:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  102772:	89 c8                	mov    %ecx,%eax
  102774:	01 c0                	add    %eax,%eax
  102776:	01 c8                	add    %ecx,%eax
  102778:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10277f:	01 c8                	add    %ecx,%eax
  102781:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102788:	01 c8                	add    %ecx,%eax
  10278a:	89 c1                	mov    %eax,%ecx
  10278c:	c1 e1 04             	shl    $0x4,%ecx
  10278f:	01 c8                	add    %ecx,%eax
  102791:	c1 e0 02             	shl    $0x2,%eax
  102794:	01 d8                	add    %ebx,%eax
  102796:	05 54 40 00 00       	add    $0x4054,%eax
  10279b:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  1027a1:	8b 45 08             	mov    0x8(%ebp),%eax
  1027a4:	8b 58 28             	mov    0x28(%eax),%ebx
  1027a7:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1027ad:	8b 08                	mov    (%eax),%ecx
  1027af:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  1027b5:	89 c8                	mov    %ecx,%eax
  1027b7:	01 c0                	add    %eax,%eax
  1027b9:	01 c8                	add    %ecx,%eax
  1027bb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1027c2:	01 c8                	add    %ecx,%eax
  1027c4:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1027cb:	01 c8                	add    %ecx,%eax
  1027cd:	89 c1                	mov    %eax,%ecx
  1027cf:	c1 e1 04             	shl    $0x4,%ecx
  1027d2:	01 c8                	add    %ecx,%eax
  1027d4:	c1 e0 02             	shl    $0x2,%eax
  1027d7:	01 d0                	add    %edx,%eax
  1027d9:	05 5c 40 00 00       	add    $0x405c,%eax
  1027de:	89 18                	mov    %ebx,(%eax)
  1027e0:	cd 20                	int    $0x20
  1027e2:	90                   	nop
  1027e3:	eb 01                	jmp    1027e6 <syscallSleep+0x9f>
  1027e5:	90                   	nop
  1027e6:	5b                   	pop    %ebx
  1027e7:	5d                   	pop    %ebp
  1027e8:	c3                   	ret    

001027e9 <syscallExit>:
  1027e9:	55                   	push   %ebp
  1027ea:	89 e5                	mov    %esp,%ebp
  1027ec:	e8 54 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1027f1:	05 0f 38 00 00       	add    $0x380f,%eax
  1027f6:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1027fc:	8b 12                	mov    (%edx),%edx
  1027fe:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102804:	89 d0                	mov    %edx,%eax
  102806:	01 c0                	add    %eax,%eax
  102808:	01 d0                	add    %edx,%eax
  10280a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102811:	01 d0                	add    %edx,%eax
  102813:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10281a:	01 d0                	add    %edx,%eax
  10281c:	89 c2                	mov    %eax,%edx
  10281e:	c1 e2 04             	shl    $0x4,%edx
  102821:	01 d0                	add    %edx,%eax
  102823:	c1 e0 02             	shl    $0x2,%eax
  102826:	01 c8                	add    %ecx,%eax
  102828:	05 54 40 00 00       	add    $0x4054,%eax
  10282d:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  102833:	cd 20                	int    $0x20
  102835:	90                   	nop
  102836:	5d                   	pop    %ebp
  102837:	c3                   	ret    

00102838 <syscallSem>:
  102838:	55                   	push   %ebp
  102839:	89 e5                	mov    %esp,%ebp
  10283b:	83 ec 08             	sub    $0x8,%esp
  10283e:	e8 02 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102843:	05 bd 37 00 00       	add    $0x37bd,%eax
  102848:	8b 45 08             	mov    0x8(%ebp),%eax
  10284b:	8b 40 28             	mov    0x28(%eax),%eax
  10284e:	83 f8 01             	cmp    $0x1,%eax
  102851:	74 21                	je     102874 <syscallSem+0x3c>
  102853:	83 f8 01             	cmp    $0x1,%eax
  102856:	72 0c                	jb     102864 <syscallSem+0x2c>
  102858:	83 f8 02             	cmp    $0x2,%eax
  10285b:	74 27                	je     102884 <syscallSem+0x4c>
  10285d:	83 f8 03             	cmp    $0x3,%eax
  102860:	74 32                	je     102894 <syscallSem+0x5c>
  102862:	eb 3f                	jmp    1028a3 <syscallSem+0x6b>
  102864:	83 ec 0c             	sub    $0xc,%esp
  102867:	ff 75 08             	pushl  0x8(%ebp)
  10286a:	e8 37 00 00 00       	call   1028a6 <syscallSemInit>
  10286f:	83 c4 10             	add    $0x10,%esp
  102872:	eb 2f                	jmp    1028a3 <syscallSem+0x6b>
  102874:	83 ec 0c             	sub    $0xc,%esp
  102877:	ff 75 08             	pushl  0x8(%ebp)
  10287a:	e8 37 00 00 00       	call   1028b6 <syscallSemWait>
  10287f:	83 c4 10             	add    $0x10,%esp
  102882:	eb 1f                	jmp    1028a3 <syscallSem+0x6b>
  102884:	83 ec 0c             	sub    $0xc,%esp
  102887:	ff 75 08             	pushl  0x8(%ebp)
  10288a:	e8 37 00 00 00       	call   1028c6 <syscallSemPost>
  10288f:	83 c4 10             	add    $0x10,%esp
  102892:	eb 0f                	jmp    1028a3 <syscallSem+0x6b>
  102894:	83 ec 0c             	sub    $0xc,%esp
  102897:	ff 75 08             	pushl  0x8(%ebp)
  10289a:	e8 37 00 00 00       	call   1028d6 <syscallSemDestroy>
  10289f:	83 c4 10             	add    $0x10,%esp
  1028a2:	90                   	nop
  1028a3:	90                   	nop
  1028a4:	c9                   	leave  
  1028a5:	c3                   	ret    

001028a6 <syscallSemInit>:
  1028a6:	55                   	push   %ebp
  1028a7:	89 e5                	mov    %esp,%ebp
  1028a9:	e8 97 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028ae:	05 52 37 00 00       	add    $0x3752,%eax
  1028b3:	90                   	nop
  1028b4:	5d                   	pop    %ebp
  1028b5:	c3                   	ret    

001028b6 <syscallSemWait>:
  1028b6:	55                   	push   %ebp
  1028b7:	89 e5                	mov    %esp,%ebp
  1028b9:	e8 87 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028be:	05 42 37 00 00       	add    $0x3742,%eax
  1028c3:	90                   	nop
  1028c4:	5d                   	pop    %ebp
  1028c5:	c3                   	ret    

001028c6 <syscallSemPost>:
  1028c6:	55                   	push   %ebp
  1028c7:	89 e5                	mov    %esp,%ebp
  1028c9:	e8 77 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028ce:	05 32 37 00 00       	add    $0x3732,%eax
  1028d3:	90                   	nop
  1028d4:	5d                   	pop    %ebp
  1028d5:	c3                   	ret    

001028d6 <syscallSemDestroy>:
  1028d6:	55                   	push   %ebp
  1028d7:	89 e5                	mov    %esp,%ebp
  1028d9:	e8 67 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028de:	05 22 37 00 00       	add    $0x3722,%eax
  1028e3:	90                   	nop
  1028e4:	5d                   	pop    %ebp
  1028e5:	c3                   	ret    

001028e6 <syscallGetPid>:
  1028e6:	55                   	push   %ebp
  1028e7:	89 e5                	mov    %esp,%ebp
  1028e9:	53                   	push   %ebx
  1028ea:	e8 56 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028ef:	05 11 37 00 00       	add    $0x3711,%eax
  1028f4:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1028fa:	8b 0a                	mov    (%edx),%ecx
  1028fc:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  102902:	8b 12                	mov    (%edx),%edx
  102904:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  10290a:	89 d0                	mov    %edx,%eax
  10290c:	01 c0                	add    %eax,%eax
  10290e:	01 d0                	add    %edx,%eax
  102910:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102917:	01 d0                	add    %edx,%eax
  102919:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102920:	01 d0                	add    %edx,%eax
  102922:	89 c2                	mov    %eax,%edx
  102924:	c1 e2 04             	shl    $0x4,%edx
  102927:	01 d0                	add    %edx,%eax
  102929:	c1 e0 02             	shl    $0x2,%eax
  10292c:	01 d8                	add    %ebx,%eax
  10292e:	05 2c 40 00 00       	add    $0x402c,%eax
  102933:	89 08                	mov    %ecx,(%eax)
  102935:	90                   	nop
  102936:	5b                   	pop    %ebx
  102937:	5d                   	pop    %ebp
  102938:	c3                   	ret    

00102939 <GProtectFaultHandle>:
  102939:	55                   	push   %ebp
  10293a:	89 e5                	mov    %esp,%ebp
  10293c:	53                   	push   %ebx
  10293d:	83 ec 04             	sub    $0x4,%esp
  102940:	e8 00 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102945:	05 bb 36 00 00       	add    $0x36bb,%eax
  10294a:	83 ec 08             	sub    $0x8,%esp
  10294d:	68 2c 02 00 00       	push   $0x22c
  102952:	8d 90 78 e3 ff ff    	lea    -0x1c88(%eax),%edx
  102958:	52                   	push   %edx
  102959:	89 c3                	mov    %eax,%ebx
  10295b:	e8 e6 16 00 00       	call   104046 <abort>
  102960:	83 c4 10             	add    $0x10,%esp
  102963:	90                   	nop
  102964:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102967:	c9                   	leave  
  102968:	c3                   	ret    

00102969 <__x86.get_pc_thunk.dx>:
  102969:	8b 14 24             	mov    (%esp),%edx
  10296c:	c3                   	ret    

0010296d <inByte>:
  10296d:	55                   	push   %ebp
  10296e:	89 e5                	mov    %esp,%ebp
  102970:	83 ec 14             	sub    $0x14,%esp
  102973:	e8 cd da ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102978:	05 88 36 00 00       	add    $0x3688,%eax
  10297d:	8b 45 08             	mov    0x8(%ebp),%eax
  102980:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  102984:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102987:	89 c2                	mov    %eax,%edx
  102989:	ec                   	in     (%dx),%al
  10298a:	88 45 ff             	mov    %al,-0x1(%ebp)
  10298d:	8a 45 ff             	mov    -0x1(%ebp),%al
  102990:	c9                   	leave  
  102991:	c3                   	ret    

00102992 <outByte>:
  102992:	55                   	push   %ebp
  102993:	89 e5                	mov    %esp,%ebp
  102995:	83 ec 08             	sub    $0x8,%esp
  102998:	e8 a8 da ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10299d:	05 63 36 00 00       	add    $0x3663,%eax
  1029a2:	8b 45 08             	mov    0x8(%ebp),%eax
  1029a5:	8b 55 0c             	mov    0xc(%ebp),%edx
  1029a8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1029ac:	88 d0                	mov    %dl,%al
  1029ae:	88 45 f8             	mov    %al,-0x8(%ebp)
  1029b1:	8a 45 f8             	mov    -0x8(%ebp),%al
  1029b4:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1029b7:	ee                   	out    %al,(%dx)
  1029b8:	90                   	nop
  1029b9:	c9                   	leave  
  1029ba:	c3                   	ret    

001029bb <initKeyTable>:
  1029bb:	55                   	push   %ebp
  1029bc:	89 e5                	mov    %esp,%ebp
  1029be:	83 ec 10             	sub    $0x10,%esp
  1029c1:	e8 7f da ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1029c6:	05 3a 36 00 00       	add    $0x363a,%eax
  1029cb:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  1029d1:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1029d7:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  1029dd:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1029e3:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  1029ea:	00 00 00 
  1029ed:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  1029f3:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  1029f9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102a00:	eb 1f                	jmp    102a21 <initKeyTable+0x66>
  102a02:	8d 88 40 01 00 00    	lea    0x140(%eax),%ecx
  102a08:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102a0b:	01 ca                	add    %ecx,%edx
  102a0d:	c6 02 00             	movb   $0x0,(%edx)
  102a10:	8d 88 a0 01 00 00    	lea    0x1a0(%eax),%ecx
  102a16:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102a19:	01 ca                	add    %ecx,%edx
  102a1b:	c6 02 00             	movb   $0x0,(%edx)
  102a1e:	ff 45 fc             	incl   -0x4(%ebp)
  102a21:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  102a25:	7e db                	jle    102a02 <initKeyTable+0x47>
  102a27:	c6 80 42 01 00 00 31 	movb   $0x31,0x142(%eax)
  102a2e:	c6 80 a2 01 00 00 21 	movb   $0x21,0x1a2(%eax)
  102a35:	c6 80 43 01 00 00 32 	movb   $0x32,0x143(%eax)
  102a3c:	c6 80 a3 01 00 00 40 	movb   $0x40,0x1a3(%eax)
  102a43:	c6 80 44 01 00 00 33 	movb   $0x33,0x144(%eax)
  102a4a:	c6 80 a4 01 00 00 23 	movb   $0x23,0x1a4(%eax)
  102a51:	c6 80 45 01 00 00 34 	movb   $0x34,0x145(%eax)
  102a58:	c6 80 a5 01 00 00 24 	movb   $0x24,0x1a5(%eax)
  102a5f:	c6 80 46 01 00 00 35 	movb   $0x35,0x146(%eax)
  102a66:	c6 80 a6 01 00 00 25 	movb   $0x25,0x1a6(%eax)
  102a6d:	c6 80 47 01 00 00 36 	movb   $0x36,0x147(%eax)
  102a74:	c6 80 a7 01 00 00 5e 	movb   $0x5e,0x1a7(%eax)
  102a7b:	c6 80 48 01 00 00 37 	movb   $0x37,0x148(%eax)
  102a82:	c6 80 a8 01 00 00 26 	movb   $0x26,0x1a8(%eax)
  102a89:	c6 80 49 01 00 00 38 	movb   $0x38,0x149(%eax)
  102a90:	c6 80 a9 01 00 00 2a 	movb   $0x2a,0x1a9(%eax)
  102a97:	c6 80 4a 01 00 00 39 	movb   $0x39,0x14a(%eax)
  102a9e:	c6 80 aa 01 00 00 28 	movb   $0x28,0x1aa(%eax)
  102aa5:	c6 80 4b 01 00 00 30 	movb   $0x30,0x14b(%eax)
  102aac:	c6 80 ab 01 00 00 29 	movb   $0x29,0x1ab(%eax)
  102ab3:	c6 80 5e 01 00 00 61 	movb   $0x61,0x15e(%eax)
  102aba:	c6 80 be 01 00 00 41 	movb   $0x41,0x1be(%eax)
  102ac1:	c6 80 70 01 00 00 62 	movb   $0x62,0x170(%eax)
  102ac8:	c6 80 d0 01 00 00 42 	movb   $0x42,0x1d0(%eax)
  102acf:	c6 80 6e 01 00 00 63 	movb   $0x63,0x16e(%eax)
  102ad6:	c6 80 ce 01 00 00 43 	movb   $0x43,0x1ce(%eax)
  102add:	c6 80 60 01 00 00 64 	movb   $0x64,0x160(%eax)
  102ae4:	c6 80 c0 01 00 00 44 	movb   $0x44,0x1c0(%eax)
  102aeb:	c6 80 52 01 00 00 65 	movb   $0x65,0x152(%eax)
  102af2:	c6 80 b2 01 00 00 45 	movb   $0x45,0x1b2(%eax)
  102af9:	c6 80 61 01 00 00 66 	movb   $0x66,0x161(%eax)
  102b00:	c6 80 c1 01 00 00 46 	movb   $0x46,0x1c1(%eax)
  102b07:	c6 80 62 01 00 00 67 	movb   $0x67,0x162(%eax)
  102b0e:	c6 80 c2 01 00 00 47 	movb   $0x47,0x1c2(%eax)
  102b15:	c6 80 63 01 00 00 68 	movb   $0x68,0x163(%eax)
  102b1c:	c6 80 c3 01 00 00 48 	movb   $0x48,0x1c3(%eax)
  102b23:	c6 80 57 01 00 00 69 	movb   $0x69,0x157(%eax)
  102b2a:	c6 80 b7 01 00 00 49 	movb   $0x49,0x1b7(%eax)
  102b31:	c6 80 64 01 00 00 6a 	movb   $0x6a,0x164(%eax)
  102b38:	c6 80 c4 01 00 00 4a 	movb   $0x4a,0x1c4(%eax)
  102b3f:	c6 80 65 01 00 00 6b 	movb   $0x6b,0x165(%eax)
  102b46:	c6 80 c5 01 00 00 4b 	movb   $0x4b,0x1c5(%eax)
  102b4d:	c6 80 66 01 00 00 6c 	movb   $0x6c,0x166(%eax)
  102b54:	c6 80 c6 01 00 00 4c 	movb   $0x4c,0x1c6(%eax)
  102b5b:	c6 80 72 01 00 00 6d 	movb   $0x6d,0x172(%eax)
  102b62:	c6 80 d2 01 00 00 4d 	movb   $0x4d,0x1d2(%eax)
  102b69:	c6 80 71 01 00 00 6e 	movb   $0x6e,0x171(%eax)
  102b70:	c6 80 d1 01 00 00 4e 	movb   $0x4e,0x1d1(%eax)
  102b77:	c6 80 58 01 00 00 6f 	movb   $0x6f,0x158(%eax)
  102b7e:	c6 80 b8 01 00 00 4f 	movb   $0x4f,0x1b8(%eax)
  102b85:	c6 80 59 01 00 00 70 	movb   $0x70,0x159(%eax)
  102b8c:	c6 80 b9 01 00 00 50 	movb   $0x50,0x1b9(%eax)
  102b93:	c6 80 50 01 00 00 71 	movb   $0x71,0x150(%eax)
  102b9a:	c6 80 b0 01 00 00 51 	movb   $0x51,0x1b0(%eax)
  102ba1:	c6 80 53 01 00 00 72 	movb   $0x72,0x153(%eax)
  102ba8:	c6 80 b3 01 00 00 52 	movb   $0x52,0x1b3(%eax)
  102baf:	c6 80 5f 01 00 00 73 	movb   $0x73,0x15f(%eax)
  102bb6:	c6 80 bf 01 00 00 53 	movb   $0x53,0x1bf(%eax)
  102bbd:	c6 80 54 01 00 00 74 	movb   $0x74,0x154(%eax)
  102bc4:	c6 80 b4 01 00 00 54 	movb   $0x54,0x1b4(%eax)
  102bcb:	c6 80 56 01 00 00 75 	movb   $0x75,0x156(%eax)
  102bd2:	c6 80 b6 01 00 00 55 	movb   $0x55,0x1b6(%eax)
  102bd9:	c6 80 6f 01 00 00 76 	movb   $0x76,0x16f(%eax)
  102be0:	c6 80 cf 01 00 00 56 	movb   $0x56,0x1cf(%eax)
  102be7:	c6 80 51 01 00 00 77 	movb   $0x77,0x151(%eax)
  102bee:	c6 80 b1 01 00 00 57 	movb   $0x57,0x1b1(%eax)
  102bf5:	c6 80 6d 01 00 00 78 	movb   $0x78,0x16d(%eax)
  102bfc:	c6 80 cd 01 00 00 58 	movb   $0x58,0x1cd(%eax)
  102c03:	c6 80 55 01 00 00 79 	movb   $0x79,0x155(%eax)
  102c0a:	c6 80 b5 01 00 00 59 	movb   $0x59,0x1b5(%eax)
  102c11:	c6 80 6c 01 00 00 7a 	movb   $0x7a,0x16c(%eax)
  102c18:	c6 80 cc 01 00 00 5a 	movb   $0x5a,0x1cc(%eax)
  102c1f:	c6 80 4c 01 00 00 2d 	movb   $0x2d,0x14c(%eax)
  102c26:	c6 80 ac 01 00 00 5f 	movb   $0x5f,0x1ac(%eax)
  102c2d:	c6 80 4d 01 00 00 3d 	movb   $0x3d,0x14d(%eax)
  102c34:	c6 80 ad 01 00 00 2b 	movb   $0x2b,0x1ad(%eax)
  102c3b:	c6 80 5a 01 00 00 5b 	movb   $0x5b,0x15a(%eax)
  102c42:	c6 80 ba 01 00 00 7b 	movb   $0x7b,0x1ba(%eax)
  102c49:	c6 80 5b 01 00 00 5d 	movb   $0x5d,0x15b(%eax)
  102c50:	c6 80 bb 01 00 00 7d 	movb   $0x7d,0x1bb(%eax)
  102c57:	c6 80 5c 01 00 00 0a 	movb   $0xa,0x15c(%eax)
  102c5e:	c6 80 bc 01 00 00 0a 	movb   $0xa,0x1bc(%eax)
  102c65:	c6 80 67 01 00 00 3b 	movb   $0x3b,0x167(%eax)
  102c6c:	c6 80 c7 01 00 00 3a 	movb   $0x3a,0x1c7(%eax)
  102c73:	c6 80 68 01 00 00 27 	movb   $0x27,0x168(%eax)
  102c7a:	c6 80 c8 01 00 00 22 	movb   $0x22,0x1c8(%eax)
  102c81:	c6 80 69 01 00 00 60 	movb   $0x60,0x169(%eax)
  102c88:	c6 80 c9 01 00 00 7e 	movb   $0x7e,0x1c9(%eax)
  102c8f:	c6 80 6b 01 00 00 5c 	movb   $0x5c,0x16b(%eax)
  102c96:	c6 80 cb 01 00 00 7c 	movb   $0x7c,0x1cb(%eax)
  102c9d:	c6 80 73 01 00 00 2c 	movb   $0x2c,0x173(%eax)
  102ca4:	c6 80 d3 01 00 00 3c 	movb   $0x3c,0x1d3(%eax)
  102cab:	c6 80 74 01 00 00 2e 	movb   $0x2e,0x174(%eax)
  102cb2:	c6 80 d4 01 00 00 3e 	movb   $0x3e,0x1d4(%eax)
  102cb9:	c6 80 75 01 00 00 2f 	movb   $0x2f,0x175(%eax)
  102cc0:	c6 80 d5 01 00 00 3f 	movb   $0x3f,0x1d5(%eax)
  102cc7:	c6 80 79 01 00 00 20 	movb   $0x20,0x179(%eax)
  102cce:	c6 80 d9 01 00 00 20 	movb   $0x20,0x1d9(%eax)
  102cd5:	90                   	nop
  102cd6:	c9                   	leave  
  102cd7:	c3                   	ret    

00102cd8 <getKeyCode>:
  102cd8:	55                   	push   %ebp
  102cd9:	89 e5                	mov    %esp,%ebp
  102cdb:	83 ec 10             	sub    $0x10,%esp
  102cde:	e8 62 d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102ce3:	05 1d 33 00 00       	add    $0x331d,%eax
  102ce8:	6a 60                	push   $0x60
  102cea:	e8 7e fc ff ff       	call   10296d <inByte>
  102cef:	83 c4 04             	add    $0x4,%esp
  102cf2:	0f b6 c0             	movzbl %al,%eax
  102cf5:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102cf8:	6a 61                	push   $0x61
  102cfa:	e8 6e fc ff ff       	call   10296d <inByte>
  102cff:	83 c4 04             	add    $0x4,%esp
  102d02:	0f b6 c0             	movzbl %al,%eax
  102d05:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102d08:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102d0b:	83 c8 80             	or     $0xffffff80,%eax
  102d0e:	0f be c0             	movsbl %al,%eax
  102d11:	50                   	push   %eax
  102d12:	6a 61                	push   $0x61
  102d14:	e8 79 fc ff ff       	call   102992 <outByte>
  102d19:	83 c4 08             	add    $0x8,%esp
  102d1c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102d1f:	0f be c0             	movsbl %al,%eax
  102d22:	50                   	push   %eax
  102d23:	6a 61                	push   $0x61
  102d25:	e8 68 fc ff ff       	call   102992 <outByte>
  102d2a:	83 c4 08             	add    $0x8,%esp
  102d2d:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  102d34:	77 05                	ja     102d3b <getKeyCode+0x63>
  102d36:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102d39:	eb 05                	jmp    102d40 <getKeyCode+0x68>
  102d3b:	b8 00 00 00 00       	mov    $0x0,%eax
  102d40:	c9                   	leave  
  102d41:	c3                   	ret    

00102d42 <switchKeyboard>:
  102d42:	55                   	push   %ebp
  102d43:	89 e5                	mov    %esp,%ebp
  102d45:	e8 fb d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102d4a:	05 b6 32 00 00       	add    $0x32b6,%eax
  102d4f:	8b 88 fc 01 00 00    	mov    0x1fc(%eax),%ecx
  102d55:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102d5b:	39 d1                	cmp    %edx,%ecx
  102d5d:	75 0e                	jne    102d6d <switchKeyboard+0x2b>
  102d5f:	8d 90 a0 01 00 00    	lea    0x1a0(%eax),%edx
  102d65:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102d6b:	eb 0c                	jmp    102d79 <switchKeyboard+0x37>
  102d6d:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102d73:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102d79:	90                   	nop
  102d7a:	5d                   	pop    %ebp
  102d7b:	c3                   	ret    

00102d7c <getChar>:
  102d7c:	55                   	push   %ebp
  102d7d:	89 e5                	mov    %esp,%ebp
  102d7f:	53                   	push   %ebx
  102d80:	e8 b0 da ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102d85:	81 c3 7b 32 00 00    	add    $0x327b,%ebx
  102d8b:	8b 45 08             	mov    0x8(%ebp),%eax
  102d8e:	83 f8 3a             	cmp    $0x3a,%eax
  102d91:	74 32                	je     102dc5 <getChar+0x49>
  102d93:	83 f8 3a             	cmp    $0x3a,%eax
  102d96:	77 0f                	ja     102da7 <getChar+0x2b>
  102d98:	83 f8 2a             	cmp    $0x2a,%eax
  102d9b:	74 21                	je     102dbe <getChar+0x42>
  102d9d:	83 f8 36             	cmp    $0x36,%eax
  102da0:	74 1c                	je     102dbe <getChar+0x42>
  102da2:	e9 87 00 00 00       	jmp    102e2e <getChar+0xb2>
  102da7:	3d b6 00 00 00       	cmp    $0xb6,%eax
  102dac:	74 10                	je     102dbe <getChar+0x42>
  102dae:	3d ba 00 00 00       	cmp    $0xba,%eax
  102db3:	74 42                	je     102df7 <getChar+0x7b>
  102db5:	3d aa 00 00 00       	cmp    $0xaa,%eax
  102dba:	74 02                	je     102dbe <getChar+0x42>
  102dbc:	eb 70                	jmp    102e2e <getChar+0xb2>
  102dbe:	e8 7f ff ff ff       	call   102d42 <switchKeyboard>
  102dc3:	eb 69                	jmp    102e2e <getChar+0xb2>
  102dc5:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102dcb:	85 c0                	test   %eax,%eax
  102dcd:	75 11                	jne    102de0 <getChar+0x64>
  102dcf:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  102dd6:	00 00 00 
  102dd9:	e8 64 ff ff ff       	call   102d42 <switchKeyboard>
  102dde:	eb 4a                	jmp    102e2a <getChar+0xae>
  102de0:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102de6:	83 f8 01             	cmp    $0x1,%eax
  102de9:	75 3f                	jne    102e2a <getChar+0xae>
  102deb:	c7 83 00 02 00 00 02 	movl   $0x2,0x200(%ebx)
  102df2:	00 00 00 
  102df5:	eb 33                	jmp    102e2a <getChar+0xae>
  102df7:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102dfd:	83 f8 01             	cmp    $0x1,%eax
  102e00:	75 0c                	jne    102e0e <getChar+0x92>
  102e02:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  102e09:	00 00 00 
  102e0c:	eb 1f                	jmp    102e2d <getChar+0xb1>
  102e0e:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102e14:	83 f8 02             	cmp    $0x2,%eax
  102e17:	75 14                	jne    102e2d <getChar+0xb1>
  102e19:	c7 83 00 02 00 00 00 	movl   $0x0,0x200(%ebx)
  102e20:	00 00 00 
  102e23:	e8 1a ff ff ff       	call   102d42 <switchKeyboard>
  102e28:	eb 03                	jmp    102e2d <getChar+0xb1>
  102e2a:	90                   	nop
  102e2b:	eb 01                	jmp    102e2e <getChar+0xb2>
  102e2d:	90                   	nop
  102e2e:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  102e32:	76 04                	jbe    102e38 <getChar+0xbc>
  102e34:	b0 00                	mov    $0x0,%al
  102e36:	eb 0d                	jmp    102e45 <getChar+0xc9>
  102e38:	8b 93 fc 01 00 00    	mov    0x1fc(%ebx),%edx
  102e3e:	8b 45 08             	mov    0x8(%ebp),%eax
  102e41:	01 d0                	add    %edx,%eax
  102e43:	8a 00                	mov    (%eax),%al
  102e45:	5b                   	pop    %ebx
  102e46:	5d                   	pop    %ebp
  102e47:	c3                   	ret    

00102e48 <waitForInterrupt>:
  102e48:	55                   	push   %ebp
  102e49:	89 e5                	mov    %esp,%ebp
  102e4b:	e8 f5 d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e50:	05 b0 31 00 00       	add    $0x31b0,%eax
  102e55:	f4                   	hlt    
  102e56:	90                   	nop
  102e57:	5d                   	pop    %ebp
  102e58:	c3                   	ret    

00102e59 <enableInterrupt>:
  102e59:	55                   	push   %ebp
  102e5a:	89 e5                	mov    %esp,%ebp
  102e5c:	e8 e4 d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e61:	05 9f 31 00 00       	add    $0x319f,%eax
  102e66:	fb                   	sti    
  102e67:	90                   	nop
  102e68:	5d                   	pop    %ebp
  102e69:	c3                   	ret    

00102e6a <setGdt>:
  102e6a:	55                   	push   %ebp
  102e6b:	89 e5                	mov    %esp,%ebp
  102e6d:	e8 d3 d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e72:	05 8e 31 00 00       	add    $0x318e,%eax
  102e77:	8b 55 0c             	mov    0xc(%ebp),%edx
  102e7a:	4a                   	dec    %edx
  102e7b:	66 89 90 04 02 00 00 	mov    %dx,0x204(%eax)
  102e82:	8b 55 08             	mov    0x8(%ebp),%edx
  102e85:	66 89 90 06 02 00 00 	mov    %dx,0x206(%eax)
  102e8c:	8b 55 08             	mov    0x8(%ebp),%edx
  102e8f:	c1 ea 10             	shr    $0x10,%edx
  102e92:	66 89 90 08 02 00 00 	mov    %dx,0x208(%eax)
  102e99:	8d 80 04 02 00 00    	lea    0x204(%eax),%eax
  102e9f:	0f 01 10             	lgdtl  (%eax)
  102ea2:	90                   	nop
  102ea3:	5d                   	pop    %ebp
  102ea4:	c3                   	ret    

00102ea5 <lLdt>:
  102ea5:	55                   	push   %ebp
  102ea6:	89 e5                	mov    %esp,%ebp
  102ea8:	83 ec 04             	sub    $0x4,%esp
  102eab:	e8 95 d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102eb0:	05 50 31 00 00       	add    $0x3150,%eax
  102eb5:	8b 45 08             	mov    0x8(%ebp),%eax
  102eb8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102ebc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102ebf:	0f 00 d0             	lldt   %ax
  102ec2:	90                   	nop
  102ec3:	c9                   	leave  
  102ec4:	c3                   	ret    

00102ec5 <initSeg>:
  102ec5:	55                   	push   %ebp
  102ec6:	89 e5                	mov    %esp,%ebp
  102ec8:	56                   	push   %esi
  102ec9:	53                   	push   %ebx
  102eca:	83 ec 14             	sub    $0x14,%esp
  102ecd:	e8 63 d9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102ed2:	81 c3 2e 31 00 00    	add    $0x312e,%ebx
  102ed8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102edf:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ee5:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  102eeb:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ef1:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  102ef7:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102efd:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  102f01:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f07:	8a 50 0d             	mov    0xd(%eax),%dl
  102f0a:	83 e2 f0             	and    $0xfffffff0,%edx
  102f0d:	83 ca 0a             	or     $0xa,%edx
  102f10:	88 50 0d             	mov    %dl,0xd(%eax)
  102f13:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f19:	8a 50 0d             	mov    0xd(%eax),%dl
  102f1c:	83 ca 10             	or     $0x10,%edx
  102f1f:	88 50 0d             	mov    %dl,0xd(%eax)
  102f22:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f28:	8a 50 0d             	mov    0xd(%eax),%dl
  102f2b:	83 e2 9f             	and    $0xffffff9f,%edx
  102f2e:	88 50 0d             	mov    %dl,0xd(%eax)
  102f31:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f37:	8a 50 0d             	mov    0xd(%eax),%dl
  102f3a:	83 ca 80             	or     $0xffffff80,%edx
  102f3d:	88 50 0d             	mov    %dl,0xd(%eax)
  102f40:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f46:	8a 50 0e             	mov    0xe(%eax),%dl
  102f49:	83 ca 0f             	or     $0xf,%edx
  102f4c:	88 50 0e             	mov    %dl,0xe(%eax)
  102f4f:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f55:	8a 50 0e             	mov    0xe(%eax),%dl
  102f58:	83 e2 ef             	and    $0xffffffef,%edx
  102f5b:	88 50 0e             	mov    %dl,0xe(%eax)
  102f5e:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f64:	8a 50 0e             	mov    0xe(%eax),%dl
  102f67:	83 e2 df             	and    $0xffffffdf,%edx
  102f6a:	88 50 0e             	mov    %dl,0xe(%eax)
  102f6d:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f73:	8a 50 0e             	mov    0xe(%eax),%dl
  102f76:	83 ca 40             	or     $0x40,%edx
  102f79:	88 50 0e             	mov    %dl,0xe(%eax)
  102f7c:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f82:	8a 50 0e             	mov    0xe(%eax),%dl
  102f85:	83 ca 80             	or     $0xffffff80,%edx
  102f88:	88 50 0e             	mov    %dl,0xe(%eax)
  102f8b:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f91:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  102f95:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f9b:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  102fa1:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102fa7:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  102fad:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102fb3:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  102fb7:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102fbd:	8a 50 15             	mov    0x15(%eax),%dl
  102fc0:	83 e2 f0             	and    $0xfffffff0,%edx
  102fc3:	83 ca 02             	or     $0x2,%edx
  102fc6:	88 50 15             	mov    %dl,0x15(%eax)
  102fc9:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102fcf:	8a 50 15             	mov    0x15(%eax),%dl
  102fd2:	83 ca 10             	or     $0x10,%edx
  102fd5:	88 50 15             	mov    %dl,0x15(%eax)
  102fd8:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102fde:	8a 50 15             	mov    0x15(%eax),%dl
  102fe1:	83 e2 9f             	and    $0xffffff9f,%edx
  102fe4:	88 50 15             	mov    %dl,0x15(%eax)
  102fe7:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102fed:	8a 50 15             	mov    0x15(%eax),%dl
  102ff0:	83 ca 80             	or     $0xffffff80,%edx
  102ff3:	88 50 15             	mov    %dl,0x15(%eax)
  102ff6:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ffc:	8a 50 16             	mov    0x16(%eax),%dl
  102fff:	83 ca 0f             	or     $0xf,%edx
  103002:	88 50 16             	mov    %dl,0x16(%eax)
  103005:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10300b:	8a 50 16             	mov    0x16(%eax),%dl
  10300e:	83 e2 ef             	and    $0xffffffef,%edx
  103011:	88 50 16             	mov    %dl,0x16(%eax)
  103014:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10301a:	8a 50 16             	mov    0x16(%eax),%dl
  10301d:	83 e2 df             	and    $0xffffffdf,%edx
  103020:	88 50 16             	mov    %dl,0x16(%eax)
  103023:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103029:	8a 50 16             	mov    0x16(%eax),%dl
  10302c:	83 ca 40             	or     $0x40,%edx
  10302f:	88 50 16             	mov    %dl,0x16(%eax)
  103032:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103038:	8a 50 16             	mov    0x16(%eax),%dl
  10303b:	83 ca 80             	or     $0xffffff80,%edx
  10303e:	88 50 16             	mov    %dl,0x16(%eax)
  103041:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103047:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  10304b:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  103052:	e9 e1 01 00 00       	jmp    103238 <initSeg+0x373>
  103057:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10305a:	01 c0                	add    %eax,%eax
  10305c:	40                   	inc    %eax
  10305d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103060:	42                   	inc    %edx
  103061:	c1 e2 14             	shl    $0x14,%edx
  103064:	c1 ea 10             	shr    $0x10,%edx
  103067:	88 d1                	mov    %dl,%cl
  103069:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10306c:	42                   	inc    %edx
  10306d:	c1 e2 14             	shl    $0x14,%edx
  103070:	c1 ea 18             	shr    $0x18,%edx
  103073:	88 55 e7             	mov    %dl,-0x19(%ebp)
  103076:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10307c:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  103082:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103088:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  10308f:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103095:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  103099:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10309f:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1030a3:	83 e1 f0             	and    $0xfffffff0,%ecx
  1030a6:	89 ce                	mov    %ecx,%esi
  1030a8:	83 ce 0a             	or     $0xa,%esi
  1030ab:	89 f1                	mov    %esi,%ecx
  1030ad:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1030b1:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030b7:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1030bb:	83 c9 10             	or     $0x10,%ecx
  1030be:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1030c2:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030c8:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1030cc:	83 c9 60             	or     $0x60,%ecx
  1030cf:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1030d3:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030d9:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1030dd:	83 c9 80             	or     $0xffffff80,%ecx
  1030e0:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1030e4:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030ea:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1030ee:	83 e1 f0             	and    $0xfffffff0,%ecx
  1030f1:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1030f5:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030fb:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1030ff:	83 e1 ef             	and    $0xffffffef,%ecx
  103102:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103106:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10310c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103110:	83 e1 df             	and    $0xffffffdf,%ecx
  103113:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103117:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10311d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103121:	83 c9 40             	or     $0x40,%ecx
  103124:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103128:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10312e:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103132:	83 c9 80             	or     $0xffffff80,%ecx
  103135:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103139:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10313f:	8a 4d e7             	mov    -0x19(%ebp),%cl
  103142:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  103146:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103149:	40                   	inc    %eax
  10314a:	01 c0                	add    %eax,%eax
  10314c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10314f:	42                   	inc    %edx
  103150:	c1 e2 14             	shl    $0x14,%edx
  103153:	c1 ea 10             	shr    $0x10,%edx
  103156:	88 d1                	mov    %dl,%cl
  103158:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10315b:	42                   	inc    %edx
  10315c:	c1 e2 14             	shl    $0x14,%edx
  10315f:	c1 ea 18             	shr    $0x18,%edx
  103162:	88 55 e7             	mov    %dl,-0x19(%ebp)
  103165:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10316b:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  103171:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103177:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  10317e:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103184:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  103188:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10318e:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103192:	83 e1 f0             	and    $0xfffffff0,%ecx
  103195:	89 ce                	mov    %ecx,%esi
  103197:	83 ce 02             	or     $0x2,%esi
  10319a:	89 f1                	mov    %esi,%ecx
  10319c:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1031a0:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1031a6:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1031aa:	83 c9 10             	or     $0x10,%ecx
  1031ad:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1031b1:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1031b7:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1031bb:	83 c9 60             	or     $0x60,%ecx
  1031be:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1031c2:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1031c8:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1031cc:	83 c9 80             	or     $0xffffff80,%ecx
  1031cf:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1031d3:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1031d9:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1031dd:	83 e1 f0             	and    $0xfffffff0,%ecx
  1031e0:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1031e4:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1031ea:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1031ee:	83 e1 ef             	and    $0xffffffef,%ecx
  1031f1:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1031f5:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1031fb:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1031ff:	83 e1 df             	and    $0xffffffdf,%ecx
  103202:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103206:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10320c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103210:	83 c9 40             	or     $0x40,%ecx
  103213:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103217:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10321d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103221:	83 c9 80             	or     $0xffffff80,%ecx
  103224:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103228:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10322e:	8a 4d e7             	mov    -0x19(%ebp),%cl
  103231:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  103235:	ff 45 f4             	incl   -0xc(%ebp)
  103238:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  10323c:	0f 8e 15 fe ff ff    	jle    103057 <initSeg+0x192>
  103242:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103248:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  10324f:	63 00 
  103251:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  103257:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10325d:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  103264:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  10326a:	c1 e8 10             	shr    $0x10,%eax
  10326d:	88 c2                	mov    %al,%dl
  10326f:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103275:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  10327b:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103281:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103287:	83 e2 f0             	and    $0xfffffff0,%edx
  10328a:	83 ca 09             	or     $0x9,%edx
  10328d:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103293:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103299:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  10329f:	83 e2 ef             	and    $0xffffffef,%edx
  1032a2:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1032a8:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1032ae:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1032b4:	83 e2 9f             	and    $0xffffff9f,%edx
  1032b7:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1032bd:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1032c3:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1032c9:	83 ca 80             	or     $0xffffff80,%edx
  1032cc:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1032d2:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1032d8:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  1032de:	83 e2 f0             	and    $0xfffffff0,%edx
  1032e1:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  1032e7:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1032ed:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  1032f3:	83 e2 ef             	and    $0xffffffef,%edx
  1032f6:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  1032fc:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103302:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103308:	83 e2 df             	and    $0xffffffdf,%edx
  10330b:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103311:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103317:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10331d:	83 ca 40             	or     $0x40,%edx
  103320:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103326:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10332c:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103332:	83 e2 7f             	and    $0x7f,%edx
  103335:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10333b:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  103341:	c1 e8 18             	shr    $0x18,%eax
  103344:	88 c2                	mov    %al,%dl
  103346:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10334c:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  103352:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103358:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  10335e:	83 e2 ef             	and    $0xffffffef,%edx
  103361:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103367:	68 a0 00 00 00       	push   $0xa0
  10336c:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103372:	50                   	push   %eax
  103373:	e8 f2 fa ff ff       	call   102e6a <setGdt>
  103378:	83 c4 08             	add    $0x8,%esp
  10337b:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  103381:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  103388:	b8 98 00 00 00       	mov    $0x98,%eax
  10338d:	0f 00 d8             	ltr    %ax
  103390:	b8 10 00 00 00       	mov    $0x10,%eax
  103395:	8e d8                	mov    %eax,%ds
  103397:	b8 10 00 00 00       	mov    $0x10,%eax
  10339c:	8e d0                	mov    %eax,%ss
  10339e:	6a 00                	push   $0x0
  1033a0:	e8 00 fb ff ff       	call   102ea5 <lLdt>
  1033a5:	83 c4 04             	add    $0x4,%esp
  1033a8:	90                   	nop
  1033a9:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1033ac:	5b                   	pop    %ebx
  1033ad:	5e                   	pop    %esi
  1033ae:	5d                   	pop    %ebp
  1033af:	c3                   	ret    

001033b0 <initFS>:
  1033b0:	55                   	push   %ebp
  1033b1:	89 e5                	mov    %esp,%ebp
  1033b3:	53                   	push   %ebx
  1033b4:	83 ec 04             	sub    $0x4,%esp
  1033b7:	e8 89 d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1033bc:	05 44 2c 00 00       	add    $0x2c44,%eax
  1033c1:	83 ec 0c             	sub    $0xc,%esp
  1033c4:	c7 c2 60 80 10 00    	mov    $0x108060,%edx
  1033ca:	52                   	push   %edx
  1033cb:	89 c3                	mov    %eax,%ebx
  1033cd:	e8 77 d0 ff ff       	call   100449 <readSuperBlock>
  1033d2:	83 c4 10             	add    $0x10,%esp
  1033d5:	90                   	nop
  1033d6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1033d9:	c9                   	leave  
  1033da:	c3                   	ret    

001033db <initSem>:
  1033db:	55                   	push   %ebp
  1033dc:	89 e5                	mov    %esp,%ebp
  1033de:	53                   	push   %ebx
  1033df:	83 ec 10             	sub    $0x10,%esp
  1033e2:	e8 5e d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1033e7:	05 19 2c 00 00       	add    $0x2c19,%eax
  1033ec:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1033f3:	eb 7a                	jmp    10346f <initSem+0x94>
  1033f5:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  1033fb:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1033fe:	c1 e1 04             	shl    $0x4,%ecx
  103401:	01 ca                	add    %ecx,%edx
  103403:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103409:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  10340f:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103412:	c1 e1 04             	shl    $0x4,%ecx
  103415:	01 ca                	add    %ecx,%edx
  103417:	83 c2 04             	add    $0x4,%edx
  10341a:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103420:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103423:	89 d1                	mov    %edx,%ecx
  103425:	c1 e1 04             	shl    $0x4,%ecx
  103428:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  10342e:	01 ca                	add    %ecx,%edx
  103430:	8d 4a 08             	lea    0x8(%edx),%ecx
  103433:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  103439:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  10343c:	c1 e3 04             	shl    $0x4,%ebx
  10343f:	01 da                	add    %ebx,%edx
  103441:	83 c2 08             	add    $0x8,%edx
  103444:	89 0a                	mov    %ecx,(%edx)
  103446:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103449:	89 d1                	mov    %edx,%ecx
  10344b:	c1 e1 04             	shl    $0x4,%ecx
  10344e:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  103454:	01 ca                	add    %ecx,%edx
  103456:	8d 4a 08             	lea    0x8(%edx),%ecx
  103459:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  10345f:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103462:	c1 e3 04             	shl    $0x4,%ebx
  103465:	01 da                	add    %ebx,%edx
  103467:	83 c2 0c             	add    $0xc,%edx
  10346a:	89 0a                	mov    %ecx,(%edx)
  10346c:	ff 45 f8             	incl   -0x8(%ebp)
  10346f:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  103473:	7e 80                	jle    1033f5 <initSem+0x1a>
  103475:	90                   	nop
  103476:	83 c4 10             	add    $0x10,%esp
  103479:	5b                   	pop    %ebx
  10347a:	5d                   	pop    %ebp
  10347b:	c3                   	ret    

0010347c <initDev>:
  10347c:	55                   	push   %ebp
  10347d:	89 e5                	mov    %esp,%ebp
  10347f:	53                   	push   %ebx
  103480:	83 ec 10             	sub    $0x10,%esp
  103483:	e8 bd cf ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103488:	05 78 2b 00 00       	add    $0x2b78,%eax
  10348d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103494:	eb 7a                	jmp    103510 <initDev+0x94>
  103496:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  10349c:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  10349f:	c1 e1 04             	shl    $0x4,%ecx
  1034a2:	01 ca                	add    %ecx,%edx
  1034a4:	c7 02 01 00 00 00    	movl   $0x1,(%edx)
  1034aa:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1034b0:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1034b3:	c1 e1 04             	shl    $0x4,%ecx
  1034b6:	01 ca                	add    %ecx,%edx
  1034b8:	83 c2 04             	add    $0x4,%edx
  1034bb:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1034c1:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1034c4:	89 d1                	mov    %edx,%ecx
  1034c6:	c1 e1 04             	shl    $0x4,%ecx
  1034c9:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1034cf:	01 ca                	add    %ecx,%edx
  1034d1:	8d 4a 08             	lea    0x8(%edx),%ecx
  1034d4:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1034da:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  1034dd:	c1 e3 04             	shl    $0x4,%ebx
  1034e0:	01 da                	add    %ebx,%edx
  1034e2:	83 c2 08             	add    $0x8,%edx
  1034e5:	89 0a                	mov    %ecx,(%edx)
  1034e7:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1034ea:	89 d1                	mov    %edx,%ecx
  1034ec:	c1 e1 04             	shl    $0x4,%ecx
  1034ef:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1034f5:	01 ca                	add    %ecx,%edx
  1034f7:	8d 4a 08             	lea    0x8(%edx),%ecx
  1034fa:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  103500:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103503:	c1 e3 04             	shl    $0x4,%ebx
  103506:	01 da                	add    %ebx,%edx
  103508:	83 c2 0c             	add    $0xc,%edx
  10350b:	89 0a                	mov    %ecx,(%edx)
  10350d:	ff 45 f8             	incl   -0x8(%ebp)
  103510:	83 7d f8 03          	cmpl   $0x3,-0x8(%ebp)
  103514:	7e 80                	jle    103496 <initDev+0x1a>
  103516:	90                   	nop
  103517:	83 c4 10             	add    $0x10,%esp
  10351a:	5b                   	pop    %ebx
  10351b:	5d                   	pop    %ebp
  10351c:	c3                   	ret    

0010351d <loadElf>:
  10351d:	55                   	push   %ebp
  10351e:	89 e5                	mov    %esp,%ebp
  103520:	56                   	push   %esi
  103521:	53                   	push   %ebx
  103522:	81 ec a0 00 00 00    	sub    $0xa0,%esp
  103528:	e8 08 d3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  10352d:	81 c3 d3 2a 00 00    	add    $0x2ad3,%ebx
  103533:	89 e0                	mov    %esp,%eax
  103535:	89 c6                	mov    %eax,%esi
  103537:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10353e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103545:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10354b:	8b 40 14             	mov    0x14(%eax),%eax
  10354e:	8d 50 ff             	lea    -0x1(%eax),%edx
  103551:	89 55 e8             	mov    %edx,-0x18(%ebp)
  103554:	89 c2                	mov    %eax,%edx
  103556:	b8 10 00 00 00       	mov    $0x10,%eax
  10355b:	48                   	dec    %eax
  10355c:	01 d0                	add    %edx,%eax
  10355e:	b9 10 00 00 00       	mov    $0x10,%ecx
  103563:	ba 00 00 00 00       	mov    $0x0,%edx
  103568:	f7 f1                	div    %ecx
  10356a:	6b c0 10             	imul   $0x10,%eax,%eax
  10356d:	29 c4                	sub    %eax,%esp
  10356f:	89 e0                	mov    %esp,%eax
  103571:	83 c0 00             	add    $0x0,%eax
  103574:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103577:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  10357e:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
  103585:	00 00 00 
  103588:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10358f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103596:	83 ec 0c             	sub    $0xc,%esp
  103599:	8d 83 ac e3 ff ff    	lea    -0x1c54(%ebx),%eax
  10359f:	50                   	push   %eax
  1035a0:	e8 f5 05 00 00       	call   103b9a <putString>
  1035a5:	83 c4 10             	add    $0x10,%esp
  1035a8:	83 ec 0c             	sub    $0xc,%esp
  1035ab:	ff 75 08             	pushl  0x8(%ebp)
  1035ae:	e8 e7 05 00 00       	call   103b9a <putString>
  1035b3:	83 c4 10             	add    $0x10,%esp
  1035b6:	83 ec 0c             	sub    $0xc,%esp
  1035b9:	6a 0a                	push   $0xa
  1035bb:	e8 a4 05 00 00       	call   103b64 <putChar>
  1035c0:	83 c4 10             	add    $0x10,%esp
  1035c3:	ff 75 08             	pushl  0x8(%ebp)
  1035c6:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
  1035cc:	50                   	push   %eax
  1035cd:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  1035d3:	50                   	push   %eax
  1035d4:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  1035da:	50                   	push   %eax
  1035db:	e8 a5 cf ff ff       	call   100585 <readInode>
  1035e0:	83 c4 10             	add    $0x10,%esp
  1035e3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1035e6:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  1035ea:	75 0a                	jne    1035f6 <loadElf+0xd9>
  1035ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1035f1:	e9 5c 01 00 00       	jmp    103752 <loadElf+0x235>
  1035f6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1035f9:	50                   	push   %eax
  1035fa:	6a 00                	push   $0x0
  1035fc:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103602:	50                   	push   %eax
  103603:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  103609:	50                   	push   %eax
  10360a:	e8 6b ce ff ff       	call   10047a <readBlock>
  10360f:	83 c4 10             	add    $0x10,%esp
  103612:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103615:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  103619:	75 0a                	jne    103625 <loadElf+0x108>
  10361b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103620:	e9 2d 01 00 00       	jmp    103752 <loadElf+0x235>
  103625:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103628:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10362b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10362e:	8b 00                	mov    (%eax),%eax
  103630:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  103635:	74 0a                	je     103641 <loadElf+0x124>
  103637:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10363c:	e9 11 01 00 00       	jmp    103752 <loadElf+0x235>
  103641:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103648:	eb 31                	jmp    10367b <loadElf+0x15e>
  10364a:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  103650:	8b 40 14             	mov    0x14(%eax),%eax
  103653:	0f af 45 ec          	imul   -0x14(%ebp),%eax
  103657:	89 c2                	mov    %eax,%edx
  103659:	8b 45 0c             	mov    0xc(%ebp),%eax
  10365c:	01 d0                	add    %edx,%eax
  10365e:	50                   	push   %eax
  10365f:	ff 75 ec             	pushl  -0x14(%ebp)
  103662:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103668:	50                   	push   %eax
  103669:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10366f:	50                   	push   %eax
  103670:	e8 05 ce ff ff       	call   10047a <readBlock>
  103675:	83 c4 10             	add    $0x10,%esp
  103678:	ff 45 ec             	incl   -0x14(%ebp)
  10367b:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
  103681:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  103684:	7c c4                	jl     10364a <loadElf+0x12d>
  103686:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103689:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10368c:	8b 40 1c             	mov    0x1c(%eax),%eax
  10368f:	01 d0                	add    %edx,%eax
  103691:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103694:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10369b:	e9 90 00 00 00       	jmp    103730 <loadElf+0x213>
  1036a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1036a3:	8b 00                	mov    (%eax),%eax
  1036a5:	83 f8 01             	cmp    $0x1,%eax
  1036a8:	75 7f                	jne    103729 <loadElf+0x20c>
  1036aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1036ad:	8b 50 08             	mov    0x8(%eax),%edx
  1036b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1036b3:	8b 40 04             	mov    0x4(%eax),%eax
  1036b6:	39 c2                	cmp    %eax,%edx
  1036b8:	74 6f                	je     103729 <loadElf+0x20c>
  1036ba:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1036c1:	eb 2b                	jmp    1036ee <loadElf+0x1d1>
  1036c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1036c6:	8b 50 04             	mov    0x4(%eax),%edx
  1036c9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1036cc:	01 c2                	add    %eax,%edx
  1036ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1036d1:	01 d0                	add    %edx,%eax
  1036d3:	89 c1                	mov    %eax,%ecx
  1036d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1036d8:	8b 50 08             	mov    0x8(%eax),%edx
  1036db:	8b 45 0c             	mov    0xc(%ebp),%eax
  1036de:	01 c2                	add    %eax,%edx
  1036e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1036e3:	01 d0                	add    %edx,%eax
  1036e5:	89 c2                	mov    %eax,%edx
  1036e7:	8a 01                	mov    (%ecx),%al
  1036e9:	88 02                	mov    %al,(%edx)
  1036eb:	ff 45 f0             	incl   -0x10(%ebp)
  1036ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1036f1:	8b 50 10             	mov    0x10(%eax),%edx
  1036f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1036f7:	39 c2                	cmp    %eax,%edx
  1036f9:	77 c8                	ja     1036c3 <loadElf+0x1a6>
  1036fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1036fe:	8b 40 10             	mov    0x10(%eax),%eax
  103701:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103704:	eb 16                	jmp    10371c <loadElf+0x1ff>
  103706:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103709:	8b 50 08             	mov    0x8(%eax),%edx
  10370c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10370f:	01 c2                	add    %eax,%edx
  103711:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103714:	01 d0                	add    %edx,%eax
  103716:	c6 00 00             	movb   $0x0,(%eax)
  103719:	ff 45 f0             	incl   -0x10(%ebp)
  10371c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10371f:	8b 50 14             	mov    0x14(%eax),%edx
  103722:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103725:	39 c2                	cmp    %eax,%edx
  103727:	77 dd                	ja     103706 <loadElf+0x1e9>
  103729:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  10372d:	ff 45 ec             	incl   -0x14(%ebp)
  103730:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103733:	8b 40 2c             	mov    0x2c(%eax),%eax
  103736:	0f b7 c0             	movzwl %ax,%eax
  103739:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  10373c:	0f 8c 5e ff ff ff    	jl     1036a0 <loadElf+0x183>
  103742:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103745:	8b 50 18             	mov    0x18(%eax),%edx
  103748:	8b 45 10             	mov    0x10(%ebp),%eax
  10374b:	89 10                	mov    %edx,(%eax)
  10374d:	b8 00 00 00 00       	mov    $0x0,%eax
  103752:	89 f4                	mov    %esi,%esp
  103754:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103757:	5b                   	pop    %ebx
  103758:	5e                   	pop    %esi
  103759:	5d                   	pop    %ebp
  10375a:	c3                   	ret    

0010375b <loadUMain>:
  10375b:	55                   	push   %ebp
  10375c:	89 e5                	mov    %esp,%ebp
  10375e:	53                   	push   %ebx
  10375f:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  103765:	e8 cb d0 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  10376a:	81 c3 96 28 00 00    	add    $0x2896,%ebx
  103770:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103777:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  10377e:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  103785:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  10378c:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  103793:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  10379a:	00 00 00 
  10379d:	8d 83 b3 e3 ff ff    	lea    -0x1c4d(%ebx),%eax
  1037a3:	50                   	push   %eax
  1037a4:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  1037aa:	50                   	push   %eax
  1037ab:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  1037b1:	50                   	push   %eax
  1037b2:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  1037b8:	50                   	push   %eax
  1037b9:	e8 c7 cd ff ff       	call   100585 <readInode>
  1037be:	83 c4 10             	add    $0x10,%esp
  1037c1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1037c8:	eb 31                	jmp    1037fb <loadUMain+0xa0>
  1037ca:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  1037d0:	8b 40 14             	mov    0x14(%eax),%eax
  1037d3:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  1037d7:	89 c2                	mov    %eax,%edx
  1037d9:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1037dc:	01 d0                	add    %edx,%eax
  1037de:	50                   	push   %eax
  1037df:	ff 75 f4             	pushl  -0xc(%ebp)
  1037e2:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  1037e8:	50                   	push   %eax
  1037e9:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  1037ef:	50                   	push   %eax
  1037f0:	e8 85 cc ff ff       	call   10047a <readBlock>
  1037f5:	83 c4 10             	add    $0x10,%esp
  1037f8:	ff 45 f4             	incl   -0xc(%ebp)
  1037fb:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  103801:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  103804:	7c c4                	jl     1037ca <loadUMain+0x6f>
  103806:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103809:	8b 40 18             	mov    0x18(%eax),%eax
  10380c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10380f:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103812:	8b 40 1c             	mov    0x1c(%eax),%eax
  103815:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103818:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10381b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10381e:	01 d0                	add    %edx,%eax
  103820:	8b 40 04             	mov    0x4(%eax),%eax
  103823:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103826:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10382d:	eb 1c                	jmp    10384b <loadUMain+0xf0>
  10382f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103832:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103835:	01 c2                	add    %eax,%edx
  103837:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10383a:	01 d0                	add    %edx,%eax
  10383c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10383f:	8b 55 e8             	mov    -0x18(%ebp),%edx
  103842:	01 ca                	add    %ecx,%edx
  103844:	8a 00                	mov    (%eax),%al
  103846:	88 02                	mov    %al,(%edx)
  103848:	ff 45 f4             	incl   -0xc(%ebp)
  10384b:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  103852:	7e db                	jle    10382f <loadUMain+0xd4>
  103854:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103857:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10385a:	c9                   	leave  
  10385b:	c3                   	ret    

0010385c <initProc>:
  10385c:	55                   	push   %ebp
  10385d:	89 e5                	mov    %esp,%ebp
  10385f:	53                   	push   %ebx
  103860:	83 ec 14             	sub    $0x14,%esp
  103863:	e8 cd cf ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103868:	81 c3 98 27 00 00    	add    $0x2798,%ebx
  10386e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103875:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10387c:	eb 3b                	jmp    1038b9 <initProc+0x5d>
  10387e:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  103884:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103887:	89 d0                	mov    %edx,%eax
  103889:	01 c0                	add    %eax,%eax
  10388b:	01 d0                	add    %edx,%eax
  10388d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  103894:	01 d0                	add    %edx,%eax
  103896:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10389d:	01 d0                	add    %edx,%eax
  10389f:	89 c2                	mov    %eax,%edx
  1038a1:	c1 e2 04             	shl    $0x4,%edx
  1038a4:	01 d0                	add    %edx,%eax
  1038a6:	c1 e0 02             	shl    $0x2,%eax
  1038a9:	01 c8                	add    %ecx,%eax
  1038ab:	05 54 40 00 00       	add    $0x4054,%eax
  1038b0:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  1038b6:	ff 45 f4             	incl   -0xc(%ebp)
  1038b9:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  1038bd:	7e bf                	jle    10387e <initProc+0x22>
  1038bf:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038c5:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  1038cb:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038d1:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  1038d7:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038dd:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  1038e3:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038e9:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  1038ef:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038f5:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  1038fc:	00 00 00 
  1038ff:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103905:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  10390c:	00 00 00 
  10390f:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103915:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  10391c:	00 00 00 
  10391f:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103925:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  10392c:	00 00 00 
  10392f:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103935:	8d 90 8c 80 00 00    	lea    0x808c(%eax),%edx
  10393b:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103941:	89 90 d8 80 00 00    	mov    %edx,0x80d8(%eax)
  103947:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10394d:	8d 90 d8 80 00 00    	lea    0x80d8(%eax),%edx
  103953:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103959:	89 90 dc 80 00 00    	mov    %edx,0x80dc(%eax)
  10395f:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103965:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  10396c:	00 00 00 
  10396f:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103975:	c7 80 e4 80 00 00 00 	movl   $0x0,0x80e4(%eax)
  10397c:	00 00 00 
  10397f:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103985:	c7 80 e8 80 00 00 00 	movl   $0x0,0x80e8(%eax)
  10398c:	00 00 00 
  10398f:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103995:	c7 80 ec 80 00 00 01 	movl   $0x1,0x80ec(%eax)
  10399c:	00 00 00 
  10399f:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1039a5:	c7 80 d4 80 00 00 23 	movl   $0x23,0x80d4(%eax)
  1039ac:	00 00 00 
  1039af:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1039b5:	c7 80 d0 80 00 00 00 	movl   $0x100000,0x80d0(%eax)
  1039bc:	00 10 00 
  1039bf:	9c                   	pushf  
  1039c0:	5a                   	pop    %edx
  1039c1:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1039c7:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  1039cd:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1039d3:	8b 80 cc 80 00 00    	mov    0x80cc(%eax),%eax
  1039d9:	80 cc 02             	or     $0x2,%ah
  1039dc:	89 c2                	mov    %eax,%edx
  1039de:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1039e4:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  1039ea:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1039f0:	c7 80 c8 80 00 00 1b 	movl   $0x1b,0x80c8(%eax)
  1039f7:	00 00 00 
  1039fa:	e8 5c fd ff ff       	call   10375b <loadUMain>
  1039ff:	89 c2                	mov    %eax,%edx
  103a01:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103a07:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  103a0d:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103a13:	c7 80 98 80 00 00 23 	movl   $0x23,0x8098(%eax)
  103a1a:	00 00 00 
  103a1d:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103a23:	c7 80 94 80 00 00 23 	movl   $0x23,0x8094(%eax)
  103a2a:	00 00 00 
  103a2d:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103a33:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  103a3a:	00 00 00 
  103a3d:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103a43:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  103a4a:	00 00 00 
  103a4d:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  103a53:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  103a59:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103a5f:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  103a65:	e8 ef f3 ff ff       	call   102e59 <enableInterrupt>
  103a6a:	cd 20                	int    $0x20
  103a6c:	e8 d7 f3 ff ff       	call   102e48 <waitForInterrupt>
  103a71:	eb f9                	jmp    103a6c <initProc+0x210>

00103a73 <inByte>:
  103a73:	55                   	push   %ebp
  103a74:	89 e5                	mov    %esp,%ebp
  103a76:	83 ec 14             	sub    $0x14,%esp
  103a79:	e8 c7 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103a7e:	05 82 25 00 00       	add    $0x2582,%eax
  103a83:	8b 45 08             	mov    0x8(%ebp),%eax
  103a86:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  103a8a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103a8d:	89 c2                	mov    %eax,%edx
  103a8f:	ec                   	in     (%dx),%al
  103a90:	88 45 ff             	mov    %al,-0x1(%ebp)
  103a93:	8a 45 ff             	mov    -0x1(%ebp),%al
  103a96:	c9                   	leave  
  103a97:	c3                   	ret    

00103a98 <outByte>:
  103a98:	55                   	push   %ebp
  103a99:	89 e5                	mov    %esp,%ebp
  103a9b:	83 ec 08             	sub    $0x8,%esp
  103a9e:	e8 a2 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103aa3:	05 5d 25 00 00       	add    $0x255d,%eax
  103aa8:	8b 45 08             	mov    0x8(%ebp),%eax
  103aab:	8b 55 0c             	mov    0xc(%ebp),%edx
  103aae:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103ab2:	88 d0                	mov    %dl,%al
  103ab4:	88 45 f8             	mov    %al,-0x8(%ebp)
  103ab7:	8a 45 f8             	mov    -0x8(%ebp),%al
  103aba:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103abd:	ee                   	out    %al,(%dx)
  103abe:	90                   	nop
  103abf:	c9                   	leave  
  103ac0:	c3                   	ret    

00103ac1 <initSerial>:
  103ac1:	55                   	push   %ebp
  103ac2:	89 e5                	mov    %esp,%ebp
  103ac4:	e8 7c c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103ac9:	05 37 25 00 00       	add    $0x2537,%eax
  103ace:	6a 00                	push   $0x0
  103ad0:	68 f9 03 00 00       	push   $0x3f9
  103ad5:	e8 be ff ff ff       	call   103a98 <outByte>
  103ada:	83 c4 08             	add    $0x8,%esp
  103add:	6a 80                	push   $0xffffff80
  103adf:	68 fb 03 00 00       	push   $0x3fb
  103ae4:	e8 af ff ff ff       	call   103a98 <outByte>
  103ae9:	83 c4 08             	add    $0x8,%esp
  103aec:	6a 01                	push   $0x1
  103aee:	68 f8 03 00 00       	push   $0x3f8
  103af3:	e8 a0 ff ff ff       	call   103a98 <outByte>
  103af8:	83 c4 08             	add    $0x8,%esp
  103afb:	6a 00                	push   $0x0
  103afd:	68 f9 03 00 00       	push   $0x3f9
  103b02:	e8 91 ff ff ff       	call   103a98 <outByte>
  103b07:	83 c4 08             	add    $0x8,%esp
  103b0a:	6a 03                	push   $0x3
  103b0c:	68 fb 03 00 00       	push   $0x3fb
  103b11:	e8 82 ff ff ff       	call   103a98 <outByte>
  103b16:	83 c4 08             	add    $0x8,%esp
  103b19:	6a c7                	push   $0xffffffc7
  103b1b:	68 fa 03 00 00       	push   $0x3fa
  103b20:	e8 73 ff ff ff       	call   103a98 <outByte>
  103b25:	83 c4 08             	add    $0x8,%esp
  103b28:	6a 0b                	push   $0xb
  103b2a:	68 fc 03 00 00       	push   $0x3fc
  103b2f:	e8 64 ff ff ff       	call   103a98 <outByte>
  103b34:	83 c4 08             	add    $0x8,%esp
  103b37:	90                   	nop
  103b38:	c9                   	leave  
  103b39:	c3                   	ret    

00103b3a <serialIdle>:
  103b3a:	55                   	push   %ebp
  103b3b:	89 e5                	mov    %esp,%ebp
  103b3d:	e8 03 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103b42:	05 be 24 00 00       	add    $0x24be,%eax
  103b47:	68 fd 03 00 00       	push   $0x3fd
  103b4c:	e8 22 ff ff ff       	call   103a73 <inByte>
  103b51:	83 c4 04             	add    $0x4,%esp
  103b54:	0f b6 c0             	movzbl %al,%eax
  103b57:	83 e0 20             	and    $0x20,%eax
  103b5a:	85 c0                	test   %eax,%eax
  103b5c:	0f 95 c0             	setne  %al
  103b5f:	0f b6 c0             	movzbl %al,%eax
  103b62:	c9                   	leave  
  103b63:	c3                   	ret    

00103b64 <putChar>:
  103b64:	55                   	push   %ebp
  103b65:	89 e5                	mov    %esp,%ebp
  103b67:	83 ec 04             	sub    $0x4,%esp
  103b6a:	e8 d6 c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103b6f:	05 91 24 00 00       	add    $0x2491,%eax
  103b74:	8b 45 08             	mov    0x8(%ebp),%eax
  103b77:	88 45 fc             	mov    %al,-0x4(%ebp)
  103b7a:	90                   	nop
  103b7b:	e8 ba ff ff ff       	call   103b3a <serialIdle>
  103b80:	83 f8 01             	cmp    $0x1,%eax
  103b83:	75 f6                	jne    103b7b <putChar+0x17>
  103b85:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  103b89:	50                   	push   %eax
  103b8a:	68 f8 03 00 00       	push   $0x3f8
  103b8f:	e8 04 ff ff ff       	call   103a98 <outByte>
  103b94:	83 c4 08             	add    $0x8,%esp
  103b97:	90                   	nop
  103b98:	c9                   	leave  
  103b99:	c3                   	ret    

00103b9a <putString>:
  103b9a:	55                   	push   %ebp
  103b9b:	89 e5                	mov    %esp,%ebp
  103b9d:	83 ec 10             	sub    $0x10,%esp
  103ba0:	e8 a0 c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103ba5:	05 5b 24 00 00       	add    $0x245b,%eax
  103baa:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103bb1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103bb5:	74 30                	je     103be7 <putString+0x4d>
  103bb7:	eb 1e                	jmp    103bd7 <putString+0x3d>
  103bb9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103bbc:	8d 50 01             	lea    0x1(%eax),%edx
  103bbf:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103bc2:	89 c2                	mov    %eax,%edx
  103bc4:	8b 45 08             	mov    0x8(%ebp),%eax
  103bc7:	01 d0                	add    %edx,%eax
  103bc9:	8a 00                	mov    (%eax),%al
  103bcb:	0f be c0             	movsbl %al,%eax
  103bce:	50                   	push   %eax
  103bcf:	e8 90 ff ff ff       	call   103b64 <putChar>
  103bd4:	83 c4 04             	add    $0x4,%esp
  103bd7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103bda:	8b 45 08             	mov    0x8(%ebp),%eax
  103bdd:	01 d0                	add    %edx,%eax
  103bdf:	8a 00                	mov    (%eax),%al
  103be1:	84 c0                	test   %al,%al
  103be3:	75 d4                	jne    103bb9 <putString+0x1f>
  103be5:	eb 01                	jmp    103be8 <putString+0x4e>
  103be7:	90                   	nop
  103be8:	c9                   	leave  
  103be9:	c3                   	ret    

00103bea <putInt>:
  103bea:	55                   	push   %ebp
  103beb:	89 e5                	mov    %esp,%ebp
  103bed:	83 ec 30             	sub    $0x30,%esp
  103bf0:	e8 50 c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103bf5:	05 0b 24 00 00       	add    $0x240b,%eax
  103bfa:	8d 45 dc             	lea    -0x24(%ebp),%eax
  103bfd:	83 c0 1f             	add    $0x1f,%eax
  103c00:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103c03:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103c06:	c6 00 00             	movb   $0x0,(%eax)
  103c09:	ff 4d fc             	decl   -0x4(%ebp)
  103c0c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103c0f:	c6 00 0a             	movb   $0xa,(%eax)
  103c12:	8b 45 08             	mov    0x8(%ebp),%eax
  103c15:	b9 0a 00 00 00       	mov    $0xa,%ecx
  103c1a:	99                   	cltd   
  103c1b:	f7 f9                	idiv   %ecx
  103c1d:	89 d0                	mov    %edx,%eax
  103c1f:	83 c0 30             	add    $0x30,%eax
  103c22:	ff 4d fc             	decl   -0x4(%ebp)
  103c25:	88 c2                	mov    %al,%dl
  103c27:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103c2a:	88 10                	mov    %dl,(%eax)
  103c2c:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103c2f:	b8 67 66 66 66       	mov    $0x66666667,%eax
  103c34:	f7 e9                	imul   %ecx
  103c36:	c1 fa 02             	sar    $0x2,%edx
  103c39:	89 c8                	mov    %ecx,%eax
  103c3b:	c1 f8 1f             	sar    $0x1f,%eax
  103c3e:	29 c2                	sub    %eax,%edx
  103c40:	89 d0                	mov    %edx,%eax
  103c42:	89 45 08             	mov    %eax,0x8(%ebp)
  103c45:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103c49:	75 c7                	jne    103c12 <putInt+0x28>
  103c4b:	ff 75 fc             	pushl  -0x4(%ebp)
  103c4e:	e8 47 ff ff ff       	call   103b9a <putString>
  103c53:	83 c4 04             	add    $0x4,%esp
  103c56:	90                   	nop
  103c57:	c9                   	leave  
  103c58:	c3                   	ret    

00103c59 <outByte>:
  103c59:	55                   	push   %ebp
  103c5a:	89 e5                	mov    %esp,%ebp
  103c5c:	83 ec 08             	sub    $0x8,%esp
  103c5f:	e8 e1 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c64:	05 9c 23 00 00       	add    $0x239c,%eax
  103c69:	8b 45 08             	mov    0x8(%ebp),%eax
  103c6c:	8b 55 0c             	mov    0xc(%ebp),%edx
  103c6f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103c73:	88 d0                	mov    %dl,%al
  103c75:	88 45 f8             	mov    %al,-0x8(%ebp)
  103c78:	8a 45 f8             	mov    -0x8(%ebp),%al
  103c7b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103c7e:	ee                   	out    %al,(%dx)
  103c7f:	90                   	nop
  103c80:	c9                   	leave  
  103c81:	c3                   	ret    

00103c82 <initTimer>:
  103c82:	55                   	push   %ebp
  103c83:	89 e5                	mov    %esp,%ebp
  103c85:	83 ec 10             	sub    $0x10,%esp
  103c88:	e8 b8 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c8d:	05 73 23 00 00       	add    $0x2373,%eax
  103c92:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  103c99:	6a 34                	push   $0x34
  103c9b:	6a 43                	push   $0x43
  103c9d:	e8 b7 ff ff ff       	call   103c59 <outByte>
  103ca2:	83 c4 08             	add    $0x8,%esp
  103ca5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ca8:	25 ff 00 00 80       	and    $0x800000ff,%eax
  103cad:	85 c0                	test   %eax,%eax
  103caf:	79 07                	jns    103cb8 <initTimer+0x36>
  103cb1:	48                   	dec    %eax
  103cb2:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  103cb7:	40                   	inc    %eax
  103cb8:	0f be c0             	movsbl %al,%eax
  103cbb:	50                   	push   %eax
  103cbc:	6a 40                	push   $0x40
  103cbe:	e8 96 ff ff ff       	call   103c59 <outByte>
  103cc3:	83 c4 08             	add    $0x8,%esp
  103cc6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103cc9:	85 c0                	test   %eax,%eax
  103ccb:	79 05                	jns    103cd2 <initTimer+0x50>
  103ccd:	05 ff 00 00 00       	add    $0xff,%eax
  103cd2:	c1 f8 08             	sar    $0x8,%eax
  103cd5:	0f be c0             	movsbl %al,%eax
  103cd8:	50                   	push   %eax
  103cd9:	6a 40                	push   $0x40
  103cdb:	e8 79 ff ff ff       	call   103c59 <outByte>
  103ce0:	83 c4 08             	add    $0x8,%esp
  103ce3:	90                   	nop
  103ce4:	c9                   	leave  
  103ce5:	c3                   	ret    

00103ce6 <outByte>:
  103ce6:	55                   	push   %ebp
  103ce7:	89 e5                	mov    %esp,%ebp
  103ce9:	83 ec 08             	sub    $0x8,%esp
  103cec:	e8 54 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103cf1:	05 0f 23 00 00       	add    $0x230f,%eax
  103cf6:	8b 45 08             	mov    0x8(%ebp),%eax
  103cf9:	8b 55 0c             	mov    0xc(%ebp),%edx
  103cfc:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103d00:	88 d0                	mov    %dl,%al
  103d02:	88 45 f8             	mov    %al,-0x8(%ebp)
  103d05:	8a 45 f8             	mov    -0x8(%ebp),%al
  103d08:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103d0b:	ee                   	out    %al,(%dx)
  103d0c:	90                   	nop
  103d0d:	c9                   	leave  
  103d0e:	c3                   	ret    

00103d0f <initVga>:
  103d0f:	55                   	push   %ebp
  103d10:	89 e5                	mov    %esp,%ebp
  103d12:	83 ec 08             	sub    $0x8,%esp
  103d15:	e8 2b c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103d1a:	05 e6 22 00 00       	add    $0x22e6,%eax
  103d1f:	c7 80 0c 02 00 00 00 	movl   $0x0,0x20c(%eax)
  103d26:	00 00 00 
  103d29:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
  103d30:	00 00 00 
  103d33:	c7 80 14 02 00 00 00 	movl   $0x0,0x214(%eax)
  103d3a:	00 00 00 
  103d3d:	e8 12 00 00 00       	call   103d54 <clearScreen>
  103d42:	83 ec 08             	sub    $0x8,%esp
  103d45:	6a 00                	push   $0x0
  103d47:	6a 00                	push   $0x0
  103d49:	e8 5a 00 00 00       	call   103da8 <updateCursor>
  103d4e:	83 c4 10             	add    $0x10,%esp
  103d51:	90                   	nop
  103d52:	c9                   	leave  
  103d53:	c3                   	ret    

00103d54 <clearScreen>:
  103d54:	55                   	push   %ebp
  103d55:	89 e5                	mov    %esp,%ebp
  103d57:	83 ec 10             	sub    $0x10,%esp
  103d5a:	e8 e6 c6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103d5f:	05 a1 22 00 00       	add    $0x22a1,%eax
  103d64:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103d6b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103d72:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  103d78:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103d7f:	eb 1b                	jmp    103d9c <clearScreen+0x48>
  103d81:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103d84:	01 c0                	add    %eax,%eax
  103d86:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103d89:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103d8c:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  103d92:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  103d96:	66 89 02             	mov    %ax,(%edx)
  103d99:	ff 45 fc             	incl   -0x4(%ebp)
  103d9c:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  103da3:	7e dc                	jle    103d81 <clearScreen+0x2d>
  103da5:	90                   	nop
  103da6:	c9                   	leave  
  103da7:	c3                   	ret    

00103da8 <updateCursor>:
  103da8:	55                   	push   %ebp
  103da9:	89 e5                	mov    %esp,%ebp
  103dab:	83 ec 10             	sub    $0x10,%esp
  103dae:	e8 92 c6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103db3:	05 4d 22 00 00       	add    $0x224d,%eax
  103db8:	8b 55 08             	mov    0x8(%ebp),%edx
  103dbb:	89 d0                	mov    %edx,%eax
  103dbd:	c1 e0 02             	shl    $0x2,%eax
  103dc0:	01 d0                	add    %edx,%eax
  103dc2:	c1 e0 04             	shl    $0x4,%eax
  103dc5:	89 c2                	mov    %eax,%edx
  103dc7:	8b 45 0c             	mov    0xc(%ebp),%eax
  103dca:	01 d0                	add    %edx,%eax
  103dcc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103dcf:	6a 0f                	push   $0xf
  103dd1:	68 d4 03 00 00       	push   $0x3d4
  103dd6:	e8 0b ff ff ff       	call   103ce6 <outByte>
  103ddb:	83 c4 08             	add    $0x8,%esp
  103dde:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103de1:	0f be c0             	movsbl %al,%eax
  103de4:	50                   	push   %eax
  103de5:	68 d5 03 00 00       	push   $0x3d5
  103dea:	e8 f7 fe ff ff       	call   103ce6 <outByte>
  103def:	83 c4 08             	add    $0x8,%esp
  103df2:	6a 0e                	push   $0xe
  103df4:	68 d4 03 00 00       	push   $0x3d4
  103df9:	e8 e8 fe ff ff       	call   103ce6 <outByte>
  103dfe:	83 c4 08             	add    $0x8,%esp
  103e01:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103e04:	c1 f8 08             	sar    $0x8,%eax
  103e07:	0f be c0             	movsbl %al,%eax
  103e0a:	50                   	push   %eax
  103e0b:	68 d5 03 00 00       	push   $0x3d5
  103e10:	e8 d1 fe ff ff       	call   103ce6 <outByte>
  103e15:	83 c4 08             	add    $0x8,%esp
  103e18:	90                   	nop
  103e19:	c9                   	leave  
  103e1a:	c3                   	ret    

00103e1b <scrollScreen>:
  103e1b:	55                   	push   %ebp
  103e1c:	89 e5                	mov    %esp,%ebp
  103e1e:	53                   	push   %ebx
  103e1f:	83 ec 10             	sub    $0x10,%esp
  103e22:	e8 42 eb ff ff       	call   102969 <__x86.get_pc_thunk.dx>
  103e27:	81 c2 d9 21 00 00    	add    $0x21d9,%edx
  103e2d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103e34:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103e3b:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  103e41:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103e48:	eb 2b                	jmp    103e75 <scrollScreen+0x5a>
  103e4a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103e4d:	01 c0                	add    %eax,%eax
  103e4f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103e52:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e55:	05 00 80 0b 00       	add    $0xb8000,%eax
  103e5a:	66 8b 00             	mov    (%eax),%ax
  103e5d:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  103e61:	c7 c1 60 c9 12 00    	mov    $0x12c960,%ecx
  103e67:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103e6a:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103e6e:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  103e72:	ff 45 f8             	incl   -0x8(%ebp)
  103e75:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  103e7c:	7e cc                	jle    103e4a <scrollScreen+0x2f>
  103e7e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103e85:	eb 2f                	jmp    103eb6 <scrollScreen+0x9b>
  103e87:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103e8a:	01 c0                	add    %eax,%eax
  103e8c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103e8f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103e92:	8d 48 50             	lea    0x50(%eax),%ecx
  103e95:	c7 c0 60 c9 12 00    	mov    $0x12c960,%eax
  103e9b:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  103e9f:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  103ea3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103ea6:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  103eac:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103eb0:	66 89 01             	mov    %ax,(%ecx)
  103eb3:	ff 45 f8             	incl   -0x8(%ebp)
  103eb6:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  103ebd:	7e c8                	jle    103e87 <scrollScreen+0x6c>
  103ebf:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  103ec5:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  103ecc:	eb 1b                	jmp    103ee9 <scrollScreen+0xce>
  103ece:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103ed1:	01 c0                	add    %eax,%eax
  103ed3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103ed6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103ed9:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  103edf:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103ee3:	66 89 02             	mov    %ax,(%edx)
  103ee6:	ff 45 f8             	incl   -0x8(%ebp)
  103ee9:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  103ef0:	7e dc                	jle    103ece <scrollScreen+0xb3>
  103ef2:	90                   	nop
  103ef3:	83 c4 10             	add    $0x10,%esp
  103ef6:	5b                   	pop    %ebx
  103ef7:	5d                   	pop    %ebp
  103ef8:	c3                   	ret    

00103ef9 <waitForInterrupt>:
  103ef9:	55                   	push   %ebp
  103efa:	89 e5                	mov    %esp,%ebp
  103efc:	e8 44 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103f01:	05 ff 20 00 00       	add    $0x20ff,%eax
  103f06:	f4                   	hlt    
  103f07:	90                   	nop
  103f08:	5d                   	pop    %ebp
  103f09:	c3                   	ret    

00103f0a <disableInterrupt>:
  103f0a:	55                   	push   %ebp
  103f0b:	89 e5                	mov    %esp,%ebp
  103f0d:	e8 33 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103f12:	05 ee 20 00 00       	add    $0x20ee,%eax
  103f17:	fa                   	cli    
  103f18:	90                   	nop
  103f19:	5d                   	pop    %ebp
  103f1a:	c3                   	ret    

00103f1b <i2A>:
  103f1b:	55                   	push   %ebp
  103f1c:	89 e5                	mov    %esp,%ebp
  103f1e:	83 ec 10             	sub    $0x10,%esp
  103f21:	e8 1f c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103f26:	05 da 20 00 00       	add    $0x20da,%eax
  103f2b:	8d 80 35 02 00 00    	lea    0x235(%eax),%eax
  103f31:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103f34:	8b 45 08             	mov    0x8(%ebp),%eax
  103f37:	b9 0a 00 00 00       	mov    $0xa,%ecx
  103f3c:	99                   	cltd   
  103f3d:	f7 f9                	idiv   %ecx
  103f3f:	89 d0                	mov    %edx,%eax
  103f41:	83 c0 30             	add    $0x30,%eax
  103f44:	ff 4d fc             	decl   -0x4(%ebp)
  103f47:	88 c2                	mov    %al,%dl
  103f49:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103f4c:	88 10                	mov    %dl,(%eax)
  103f4e:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103f51:	b8 67 66 66 66       	mov    $0x66666667,%eax
  103f56:	f7 e9                	imul   %ecx
  103f58:	c1 fa 02             	sar    $0x2,%edx
  103f5b:	89 c8                	mov    %ecx,%eax
  103f5d:	c1 f8 1f             	sar    $0x1f,%eax
  103f60:	29 c2                	sub    %eax,%edx
  103f62:	89 d0                	mov    %edx,%eax
  103f64:	89 45 08             	mov    %eax,0x8(%ebp)
  103f67:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103f6b:	75 c7                	jne    103f34 <i2A+0x19>
  103f6d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103f70:	c9                   	leave  
  103f71:	c3                   	ret    

00103f72 <append>:
  103f72:	55                   	push   %ebp
  103f73:	89 e5                	mov    %esp,%ebp
  103f75:	53                   	push   %ebx
  103f76:	e8 ca c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103f7b:	05 85 20 00 00       	add    $0x2085,%eax
  103f80:	eb 1a                	jmp    103f9c <append+0x2a>
  103f82:	8b 55 0c             	mov    0xc(%ebp),%edx
  103f85:	8d 42 01             	lea    0x1(%edx),%eax
  103f88:	89 45 0c             	mov    %eax,0xc(%ebp)
  103f8b:	8b 45 08             	mov    0x8(%ebp),%eax
  103f8e:	8b 00                	mov    (%eax),%eax
  103f90:	8d 58 01             	lea    0x1(%eax),%ebx
  103f93:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103f96:	89 19                	mov    %ebx,(%ecx)
  103f98:	8a 12                	mov    (%edx),%dl
  103f9a:	88 10                	mov    %dl,(%eax)
  103f9c:	8b 45 0c             	mov    0xc(%ebp),%eax
  103f9f:	8a 00                	mov    (%eax),%al
  103fa1:	84 c0                	test   %al,%al
  103fa3:	75 dd                	jne    103f82 <append+0x10>
  103fa5:	90                   	nop
  103fa6:	5b                   	pop    %ebx
  103fa7:	5d                   	pop    %ebp
  103fa8:	c3                   	ret    

00103fa9 <displayMessage>:
  103fa9:	55                   	push   %ebp
  103faa:	89 e5                	mov    %esp,%ebp
  103fac:	53                   	push   %ebx
  103fad:	83 ec 14             	sub    $0x14,%esp
  103fb0:	e8 80 c8 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103fb5:	81 c3 4b 20 00 00    	add    $0x204b,%ebx
  103fbb:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  103fc1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103fc4:	ff 75 08             	pushl  0x8(%ebp)
  103fc7:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103fca:	50                   	push   %eax
  103fcb:	e8 a2 ff ff ff       	call   103f72 <append>
  103fd0:	83 c4 08             	add    $0x8,%esp
  103fd3:	8d 83 c0 e3 ff ff    	lea    -0x1c40(%ebx),%eax
  103fd9:	50                   	push   %eax
  103fda:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103fdd:	50                   	push   %eax
  103fde:	e8 8f ff ff ff       	call   103f72 <append>
  103fe3:	83 c4 08             	add    $0x8,%esp
  103fe6:	ff 75 0c             	pushl  0xc(%ebp)
  103fe9:	e8 2d ff ff ff       	call   103f1b <i2A>
  103fee:	83 c4 04             	add    $0x4,%esp
  103ff1:	50                   	push   %eax
  103ff2:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103ff5:	50                   	push   %eax
  103ff6:	e8 77 ff ff ff       	call   103f72 <append>
  103ffb:	83 c4 08             	add    $0x8,%esp
  103ffe:	8d 83 c2 e3 ff ff    	lea    -0x1c3e(%ebx),%eax
  104004:	50                   	push   %eax
  104005:	8d 45 f4             	lea    -0xc(%ebp),%eax
  104008:	50                   	push   %eax
  104009:	e8 64 ff ff ff       	call   103f72 <append>
  10400e:	83 c4 08             	add    $0x8,%esp
  104011:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  104017:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10401a:	eb 1b                	jmp    104037 <displayMessage+0x8e>
  10401c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10401f:	8a 00                	mov    (%eax),%al
  104021:	0f be c0             	movsbl %al,%eax
  104024:	83 ec 0c             	sub    $0xc,%esp
  104027:	50                   	push   %eax
  104028:	e8 37 fb ff ff       	call   103b64 <putChar>
  10402d:	83 c4 10             	add    $0x10,%esp
  104030:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104033:	40                   	inc    %eax
  104034:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104037:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10403a:	8a 00                	mov    (%eax),%al
  10403c:	84 c0                	test   %al,%al
  10403e:	75 dc                	jne    10401c <displayMessage+0x73>
  104040:	90                   	nop
  104041:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104044:	c9                   	leave  
  104045:	c3                   	ret    

00104046 <abort>:
  104046:	55                   	push   %ebp
  104047:	89 e5                	mov    %esp,%ebp
  104049:	83 ec 08             	sub    $0x8,%esp
  10404c:	e8 f4 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104051:	05 af 1f 00 00       	add    $0x1faf,%eax
  104056:	e8 af fe ff ff       	call   103f0a <disableInterrupt>
  10405b:	83 ec 08             	sub    $0x8,%esp
  10405e:	ff 75 0c             	pushl  0xc(%ebp)
  104061:	ff 75 08             	pushl  0x8(%ebp)
  104064:	e8 40 ff ff ff       	call   103fa9 <displayMessage>
  104069:	83 c4 10             	add    $0x10,%esp
  10406c:	e8 88 fe ff ff       	call   103ef9 <waitForInterrupt>
  104071:	eb f9                	jmp    10406c <abort+0x26>

00104073 <stringChr>:
  104073:	55                   	push   %ebp
  104074:	89 e5                	mov    %esp,%ebp
  104076:	83 ec 14             	sub    $0x14,%esp
  104079:	e8 c7 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10407e:	05 82 1f 00 00       	add    $0x1f82,%eax
  104083:	8b 45 0c             	mov    0xc(%ebp),%eax
  104086:	88 45 ec             	mov    %al,-0x14(%ebp)
  104089:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104090:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104094:	75 31                	jne    1040c7 <stringChr+0x54>
  104096:	8b 45 10             	mov    0x10(%ebp),%eax
  104099:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10409f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1040a4:	eb 3c                	jmp    1040e2 <stringChr+0x6f>
  1040a6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1040a9:	8b 45 08             	mov    0x8(%ebp),%eax
  1040ac:	01 d0                	add    %edx,%eax
  1040ae:	8a 00                	mov    (%eax),%al
  1040b0:	38 45 ec             	cmp    %al,-0x14(%ebp)
  1040b3:	75 0f                	jne    1040c4 <stringChr+0x51>
  1040b5:	8b 45 10             	mov    0x10(%ebp),%eax
  1040b8:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1040bb:	89 10                	mov    %edx,(%eax)
  1040bd:	b8 00 00 00 00       	mov    $0x0,%eax
  1040c2:	eb 1e                	jmp    1040e2 <stringChr+0x6f>
  1040c4:	ff 45 fc             	incl   -0x4(%ebp)
  1040c7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1040ca:	8b 45 08             	mov    0x8(%ebp),%eax
  1040cd:	01 d0                	add    %edx,%eax
  1040cf:	8a 00                	mov    (%eax),%al
  1040d1:	84 c0                	test   %al,%al
  1040d3:	75 d1                	jne    1040a6 <stringChr+0x33>
  1040d5:	8b 45 10             	mov    0x10(%ebp),%eax
  1040d8:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1040db:	89 10                	mov    %edx,(%eax)
  1040dd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1040e2:	c9                   	leave  
  1040e3:	c3                   	ret    

001040e4 <stringChrR>:
  1040e4:	55                   	push   %ebp
  1040e5:	89 e5                	mov    %esp,%ebp
  1040e7:	83 ec 14             	sub    $0x14,%esp
  1040ea:	e8 56 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040ef:	05 11 1f 00 00       	add    $0x1f11,%eax
  1040f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1040f7:	88 45 ec             	mov    %al,-0x14(%ebp)
  1040fa:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104101:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104105:	75 13                	jne    10411a <stringChrR+0x36>
  104107:	8b 45 10             	mov    0x10(%ebp),%eax
  10410a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  104110:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104115:	eb 47                	jmp    10415e <stringChrR+0x7a>
  104117:	ff 45 fc             	incl   -0x4(%ebp)
  10411a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10411d:	8b 45 08             	mov    0x8(%ebp),%eax
  104120:	01 d0                	add    %edx,%eax
  104122:	8a 00                	mov    (%eax),%al
  104124:	84 c0                	test   %al,%al
  104126:	75 ef                	jne    104117 <stringChrR+0x33>
  104128:	8b 45 10             	mov    0x10(%ebp),%eax
  10412b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10412e:	89 10                	mov    %edx,(%eax)
  104130:	eb 21                	jmp    104153 <stringChrR+0x6f>
  104132:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104135:	8b 45 08             	mov    0x8(%ebp),%eax
  104138:	01 d0                	add    %edx,%eax
  10413a:	8a 00                	mov    (%eax),%al
  10413c:	38 45 ec             	cmp    %al,-0x14(%ebp)
  10413f:	75 0f                	jne    104150 <stringChrR+0x6c>
  104141:	8b 45 10             	mov    0x10(%ebp),%eax
  104144:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104147:	89 10                	mov    %edx,(%eax)
  104149:	b8 00 00 00 00       	mov    $0x0,%eax
  10414e:	eb 0e                	jmp    10415e <stringChrR+0x7a>
  104150:	ff 4d fc             	decl   -0x4(%ebp)
  104153:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  104157:	79 d9                	jns    104132 <stringChrR+0x4e>
  104159:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10415e:	c9                   	leave  
  10415f:	c3                   	ret    

00104160 <stringLen>:
  104160:	55                   	push   %ebp
  104161:	89 e5                	mov    %esp,%ebp
  104163:	83 ec 10             	sub    $0x10,%esp
  104166:	e8 da c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10416b:	05 95 1e 00 00       	add    $0x1e95,%eax
  104170:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104177:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10417b:	75 0a                	jne    104187 <stringLen+0x27>
  10417d:	b8 00 00 00 00       	mov    $0x0,%eax
  104182:	eb 14                	jmp    104198 <stringLen+0x38>
  104184:	ff 45 fc             	incl   -0x4(%ebp)
  104187:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10418a:	8b 45 08             	mov    0x8(%ebp),%eax
  10418d:	01 d0                	add    %edx,%eax
  10418f:	8a 00                	mov    (%eax),%al
  104191:	84 c0                	test   %al,%al
  104193:	75 ef                	jne    104184 <stringLen+0x24>
  104195:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104198:	c9                   	leave  
  104199:	c3                   	ret    

0010419a <stringCmp>:
  10419a:	55                   	push   %ebp
  10419b:	89 e5                	mov    %esp,%ebp
  10419d:	83 ec 10             	sub    $0x10,%esp
  1041a0:	e8 a0 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1041a5:	05 5b 1e 00 00       	add    $0x1e5b,%eax
  1041aa:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1041b1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1041b5:	74 06                	je     1041bd <stringCmp+0x23>
  1041b7:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1041bb:	75 3e                	jne    1041fb <stringCmp+0x61>
  1041bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1041c2:	eb 44                	jmp    104208 <stringCmp+0x6e>
  1041c4:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1041c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1041ca:	01 d0                	add    %edx,%eax
  1041cc:	8a 10                	mov    (%eax),%dl
  1041ce:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1041d1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1041d4:	01 c8                	add    %ecx,%eax
  1041d6:	8a 00                	mov    (%eax),%al
  1041d8:	38 c2                	cmp    %al,%dl
  1041da:	74 07                	je     1041e3 <stringCmp+0x49>
  1041dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1041e1:	eb 25                	jmp    104208 <stringCmp+0x6e>
  1041e3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1041e6:	8b 45 08             	mov    0x8(%ebp),%eax
  1041e9:	01 d0                	add    %edx,%eax
  1041eb:	8a 00                	mov    (%eax),%al
  1041ed:	84 c0                	test   %al,%al
  1041ef:	75 07                	jne    1041f8 <stringCmp+0x5e>
  1041f1:	b8 00 00 00 00       	mov    $0x0,%eax
  1041f6:	eb 10                	jmp    104208 <stringCmp+0x6e>
  1041f8:	ff 45 fc             	incl   -0x4(%ebp)
  1041fb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1041fe:	3b 45 10             	cmp    0x10(%ebp),%eax
  104201:	75 c1                	jne    1041c4 <stringCmp+0x2a>
  104203:	b8 00 00 00 00       	mov    $0x0,%eax
  104208:	c9                   	leave  
  104209:	c3                   	ret    

0010420a <stringCpy>:
  10420a:	55                   	push   %ebp
  10420b:	89 e5                	mov    %esp,%ebp
  10420d:	83 ec 10             	sub    $0x10,%esp
  104210:	e8 30 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104215:	05 eb 1d 00 00       	add    $0x1deb,%eax
  10421a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104221:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104225:	74 06                	je     10422d <stringCpy+0x23>
  104227:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10422b:	75 2c                	jne    104259 <stringCpy+0x4f>
  10422d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104232:	eb 40                	jmp    104274 <stringCpy+0x6a>
  104234:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104237:	8b 45 08             	mov    0x8(%ebp),%eax
  10423a:	01 d0                	add    %edx,%eax
  10423c:	8a 00                	mov    (%eax),%al
  10423e:	84 c0                	test   %al,%al
  104240:	74 21                	je     104263 <stringCpy+0x59>
  104242:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104245:	8b 45 08             	mov    0x8(%ebp),%eax
  104248:	01 d0                	add    %edx,%eax
  10424a:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10424d:	8b 55 0c             	mov    0xc(%ebp),%edx
  104250:	01 ca                	add    %ecx,%edx
  104252:	8a 00                	mov    (%eax),%al
  104254:	88 02                	mov    %al,(%edx)
  104256:	ff 45 fc             	incl   -0x4(%ebp)
  104259:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10425c:	3b 45 10             	cmp    0x10(%ebp),%eax
  10425f:	75 d3                	jne    104234 <stringCpy+0x2a>
  104261:	eb 01                	jmp    104264 <stringCpy+0x5a>
  104263:	90                   	nop
  104264:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104267:	8b 45 0c             	mov    0xc(%ebp),%eax
  10426a:	01 d0                	add    %edx,%eax
  10426c:	c6 00 00             	movb   $0x0,(%eax)
  10426f:	b8 00 00 00 00       	mov    $0x0,%eax
  104274:	c9                   	leave  
  104275:	c3                   	ret    

00104276 <setBuffer>:
  104276:	55                   	push   %ebp
  104277:	89 e5                	mov    %esp,%ebp
  104279:	83 ec 14             	sub    $0x14,%esp
  10427c:	e8 c4 c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104281:	05 7f 1d 00 00       	add    $0x1d7f,%eax
  104286:	8b 45 10             	mov    0x10(%ebp),%eax
  104289:	88 45 ec             	mov    %al,-0x14(%ebp)
  10428c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104293:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104297:	75 07                	jne    1042a0 <setBuffer+0x2a>
  104299:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10429e:	eb 26                	jmp    1042c6 <setBuffer+0x50>
  1042a0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1042a7:	eb 10                	jmp    1042b9 <setBuffer+0x43>
  1042a9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1042ac:	8b 45 08             	mov    0x8(%ebp),%eax
  1042af:	01 c2                	add    %eax,%edx
  1042b1:	8a 45 ec             	mov    -0x14(%ebp),%al
  1042b4:	88 02                	mov    %al,(%edx)
  1042b6:	ff 45 fc             	incl   -0x4(%ebp)
  1042b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1042bc:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1042bf:	7c e8                	jl     1042a9 <setBuffer+0x33>
  1042c1:	b8 00 00 00 00       	mov    $0x0,%eax
  1042c6:	c9                   	leave  
  1042c7:	c3                   	ret    

001042c8 <kEntry>:
  1042c8:	55                   	push   %ebp
  1042c9:	89 e5                	mov    %esp,%ebp
  1042cb:	53                   	push   %ebx
  1042cc:	83 ec 04             	sub    $0x4,%esp
  1042cf:	e8 61 c5 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1042d4:	81 c3 2c 1d 00 00    	add    $0x1d2c,%ebx
  1042da:	e8 e2 f7 ff ff       	call   103ac1 <initSerial>
  1042df:	e8 30 c7 ff ff       	call   100a14 <initIdt>
  1042e4:	e8 79 c5 ff ff       	call   100862 <initIntr>
  1042e9:	e8 d7 eb ff ff       	call   102ec5 <initSeg>
  1042ee:	e8 1c fa ff ff       	call   103d0f <initVga>
  1042f3:	e8 8a f9 ff ff       	call   103c82 <initTimer>
  1042f8:	e8 be e6 ff ff       	call   1029bb <initKeyTable>
  1042fd:	e8 ae f0 ff ff       	call   1033b0 <initFS>
  104302:	e8 d4 f0 ff ff       	call   1033db <initSem>
  104307:	e8 70 f1 ff ff       	call   10347c <initDev>
  10430c:	e8 4b f5 ff ff       	call   10385c <initProc>
  104311:	90                   	nop
  104312:	83 c4 04             	add    $0x4,%esp
  104315:	5b                   	pop    %ebx
  104316:	5d                   	pop    %ebp
  104317:	c3                   	ret    

00104318 <irqEmpty>:
  104318:	6a 00                	push   $0x0
  10431a:	6a ff                	push   $0xffffffff
  10431c:	eb 39                	jmp    104357 <asmDoIrq>

0010431e <irqErrorCode>:
  10431e:	6a ff                	push   $0xffffffff
  104320:	eb 35                	jmp    104357 <asmDoIrq>

00104322 <irqDoubleFault>:
  104322:	6a ff                	push   $0xffffffff
  104324:	eb 31                	jmp    104357 <asmDoIrq>

00104326 <irqInvalidTSS>:
  104326:	6a ff                	push   $0xffffffff
  104328:	eb 2d                	jmp    104357 <asmDoIrq>

0010432a <irqSegNotPresent>:
  10432a:	6a ff                	push   $0xffffffff
  10432c:	eb 29                	jmp    104357 <asmDoIrq>

0010432e <irqStackSegFault>:
  10432e:	6a ff                	push   $0xffffffff
  104330:	eb 25                	jmp    104357 <asmDoIrq>

00104332 <irqGProtectFault>:
  104332:	6a 0d                	push   $0xd
  104334:	eb 21                	jmp    104357 <asmDoIrq>

00104336 <irqPageFault>:
  104336:	6a ff                	push   $0xffffffff
  104338:	eb 1d                	jmp    104357 <asmDoIrq>

0010433a <irqAlignCheck>:
  10433a:	6a ff                	push   $0xffffffff
  10433c:	eb 19                	jmp    104357 <asmDoIrq>

0010433e <irqSecException>:
  10433e:	6a ff                	push   $0xffffffff
  104340:	eb 15                	jmp    104357 <asmDoIrq>

00104342 <irqTimer>:
  104342:	6a 00                	push   $0x0
  104344:	6a 20                	push   $0x20
  104346:	eb 0f                	jmp    104357 <asmDoIrq>

00104348 <irqKeyboard>:
  104348:	6a 00                	push   $0x0
  10434a:	6a 21                	push   $0x21
  10434c:	eb 09                	jmp    104357 <asmDoIrq>

0010434e <irqSyscall>:
  10434e:	6a 00                	push   $0x0
  104350:	68 80 00 00 00       	push   $0x80
  104355:	eb 00                	jmp    104357 <asmDoIrq>

00104357 <asmDoIrq>:
  104357:	60                   	pusha  
  104358:	1e                   	push   %ds
  104359:	06                   	push   %es
  10435a:	0f a0                	push   %fs
  10435c:	0f a8                	push   %gs
  10435e:	54                   	push   %esp
  10435f:	e8 9f c8 ff ff       	call   100c03 <irqHandle>
  104364:	83 c4 04             	add    $0x4,%esp
  104367:	0f a9                	pop    %gs
  104369:	0f a1                	pop    %fs
  10436b:	07                   	pop    %es
  10436c:	1f                   	pop    %ds
  10436d:	61                   	popa   
  10436e:	83 c4 04             	add    $0x4,%esp
  104371:	83 c4 04             	add    $0x4,%esp
  104374:	cf                   	iret   
